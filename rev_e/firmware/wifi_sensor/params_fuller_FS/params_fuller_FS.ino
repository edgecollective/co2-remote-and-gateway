/*
  ESP8266/ESP32 publish the RSSI as the WiFi signal strength to ThingSpeak channel.
  This example is for explaining how to use the AutoConnect library.

  In order to execute this example, the ThingSpeak account is needed. Sing up
  for New User Account and create a New Channel via My Channels.
  For details, please refer to the project page.
  https://hieromon.github.io/AutoConnect/howtoembed.html#used-with-mqtt-as-a-client-application

  Also, this example uses AutoConnectAux menu customization which stored in SPIFFS.
  To evaluate this example, you upload the contents as mqtt_setting.json of
  the data folder with MkSPIFFS Tool ("ESP8266 Sketch Data Upload" in Tools menu
  in Arduino IDE).

  This example is based on the thinkspeak.com environment as of Dec. 20, 2018.
  Copyright (c) 2018 Hieromon Ikasamo.
  This software is released under the MIT License.
  https://opensource.org/licenses/MIT
*/

#if defined(ARDUINO_ARCH_ESP8266)
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#define GET_CHIPID()  (ESP.getChipId())
#elif defined(ARDUINO_ARCH_ESP32)
#include <WiFi.h>
#include <WebServer.h>
#include <SPIFFS.h>
#include <HTTPClient.h>
#define GET_CHIPID()  ((uint16_t)(ESP.getEfuseMac()>>32))
#endif
#include <FS.h>
#include <PubSubClient.h> // https://github.com/knolleary/pubsubclient
#include <AutoConnect.h>

#define PARAM_FILE      "/param.json"
#define AUX_MQTTSETTING "/mqtt_setting"
#define AUX_MQTTSAVE    "/mqtt_save"
#define AUX_MQTTCLEAR   "/mqtt_clear"

// Adjusting WebServer class with between ESP8266 and ESP32.
#if defined(ARDUINO_ARCH_ESP8266)
typedef ESP8266WebServer  WiFiWebServer;
#elif defined(ARDUINO_ARCH_ESP32)
typedef WebServer WiFiWebServer;
#endif

AutoConnect  portal;
AutoConnectConfig config;
WiFiClient   wifiClient;
PubSubClient mqttClient(wifiClient);
String  serverName;
String  channelId;
String  userKey;
String  apiKey;
String  apid;
String  hostName;
unsigned int  updateInterval = 0;
unsigned long lastPub = 0;

#define MQTT_USER_ID  "anyone"

String getValue(String data, char separator, int index)
{
    int found = 0;
    int strIndex[] = { 0, -1 };
    int maxIndex = data.length() - 1;

    for (int i = 0; i <= maxIndex && found <= index; i++) {
        if (data.charAt(i) == separator || i == maxIndex) {
            found++;
            strIndex[0] = strIndex[1] + 1;
            strIndex[1] = (i == maxIndex) ? i+1 : i;
        }
    }
    return found > index ? data.substring(strIndex[0], strIndex[1]) : "";
}

bool mqttConnect() {
  static const char alphanum[] = "0123456789"
                                 "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                 "abcdefghijklmnopqrstuvwxyz";  // For random generation of client ID.
  char    clientId[9];

  uint8_t retry = 3;
  while (!mqttClient.connected()) {
    if (serverName.length() <= 0)
      break;

    mqttClient.setServer(serverName.c_str(), 1883);
    Serial.println(String("Attempting MQTT broker:") + serverName);

    for (uint8_t i = 0; i < 8; i++) {
      clientId[i] = alphanum[random(62)];
    }
    clientId[8] = '\0';

    if (mqttClient.connect(clientId, MQTT_USER_ID, userKey.c_str())) {
      Serial.println("Established:" + String(clientId));
      return true;
    } else {
      Serial.println("Connection failed:" + String(mqttClient.state()));
      if (!--retry)
        break;
      delay(3000);
    }
  }
  return false;
}

void mqttPublish(String msg) {
  String path = String("channels/") + channelId + String("/publish/") + apiKey;
  mqttClient.publish(path.c_str(), msg.c_str());
}

int getStrength(uint8_t points) {
  uint8_t sc = points;
  long    rssi = 0;

  while (sc--) {
    rssi += WiFi.RSSI();
    delay(20);
  }
  return points ? static_cast<int>(rssi / points) : 0;
}

String loadParams(AutoConnectAux& aux, PageArgument& args) {
  (void)(args);
  File param = SPIFFS.open(PARAM_FILE, "r");
  if (param) {
    aux.loadElement(param);
    param.close();
  }
  else
    Serial.println(PARAM_FILE " open failed");
  return String("");
}

String saveParams(AutoConnectAux& aux, PageArgument& args) {
  serverName = args.arg("mqttserver");
  serverName.trim();

  channelId = args.arg("channelid");
  channelId.trim();
  
  userKey = args.arg("userkey");
  userKey.trim();
  
  apiKey = args.arg("apikey");
  apiKey.trim();
  
  String upd = args.arg("period");
  updateInterval = upd.substring(0, 2).toInt() * 60000;
  
  String uniqueid = args.arg("uniqueid");

  hostName = args.arg("hostname");
  hostName.trim();
  
  // The entered value is owned by AutoConnectAux of /mqtt_setting.
  // To retrieve the elements of /mqtt_setting, it is necessary to get
  // the AutoConnectAux object of /mqtt_setting.
  File param = SPIFFS.open(PARAM_FILE, "w");
  portal.aux("/mqtt_setting")->saveElement(param, { "mqttserver", "channelid", "userkey", "apikey", "period", "uniqueid", "hostname" });
  param.close();

  // Echo back saved parameters to AutoConnectAux page.
  AutoConnectText&  echo = aux["parameters"].as<AutoConnectText>();
  echo.value = "Server: " + serverName + "<br>";
  echo.value += "Channel ID: " + channelId + "<br>";
  echo.value += "User Key: " + userKey + "<br>";
  echo.value += "API Key: " + apiKey + "<br>";
  echo.value += "Update period: " + String(updateInterval / 60000) + " min<br>";
  echo.value += "Use APID unique: " + uniqueid + "<br>";
  echo.value += "ESP host name: " + hostName + "<br>";

  return String("");
}

/*
void handleRoot() {
  String  content =
    "<html>"
    "<head>"
    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
    "</head>"
    "<body>"
    "<iframe width=\"450\" height=\"260\" style=\"transform:scale(0.79);-o-transform:scale(0.79);-webkit-transform:scale(0.79);-moz-transform:scale(0.79);-ms-transform:scale(0.79);transform-origin:0 0;-o-transform-origin:0 0;-webkit-transform-origin:0 0;-moz-transform-origin:0 0;-ms-transform-origin:0 0;border: 1px solid #cccccc;\" src=\"https://thingspeak.com/channels/454951/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&type=line\"></iframe>"
    "<p style=\"padding-top:10px;text-align:center\">" AUTOCONNECT_LINK(COG_24) "</p>"
    "</body>"
    "</html>";

  WiFiWebServer&  webServer = portal.host();
  webServer.send(200, "text/html", content);
}
*/

void handleRoot() {
  String  content = PSTR(
    "<style type=\"text/css\">"
    "body {"
    "-webkit-appearance:none;"
    "-moz-appearance:none;"
    "font-family:'Arial',sans-serif;"
    "text-align:left;"
    "}"
    ".menu > a:link {"
    "position: absolute;"
    "display: inline-block;"
    "right: 12px;"
    "padding: 0 6px;"
    "text-decoration: none;"
    "}"
    ".button {"
    "display:inline-block;"
    "border-radius:7px;"
    //"background:#73ad21;"
    "background:green;"
    "margin:0 10px 0 10px;"
    "padding:10px 20px 10px 20px;"
    "text-decoration:none;"
    "color:#000000;"
    "}"
  "</style>"
"</head>"
"<body>"
  "<div class=\"menu\">" AUTOCONNECT_LINK(BAR_32) "</div>"
  "<h1>CO2 Sensor</h1>"
  "Firmware version <a href=\"https://github.com/edgecollective/co2-remote-and-gateway/tree/rev_e_wifi_config/rev_e/firmware/wifi_sensor/AutoConnect_Elements_display_scd30_landing_page\">0.2</a><br>"
  "User guide: <a href=\"http://pvos.org\">pvos.org/co2</a><br>");
  //"<h3>Data & Graphs</h3>");
 // "<br><br>");
  //content += String(F("<h3>Actions:<h3>"));
  content += String(F("<p><a class=\"button\" href=\"/_ac/config\">WiFi Settings</a><a class=\"button\" href=\"/mqtt_setting\">Bayou Settings</a></p>"));
  
  content += String(F("</body></html>"));
  WiFiWebServer&  webServer = portal.host();
  webServer.send(200, "text/html", content);
}

// Clear channel using Thingspeak's API.
void handleClearChannel() {
  HTTPClient  httpClient;
  WiFiClient  client;
  String  endpoint = serverName;
  endpoint.replace("mqtt", "api");
  String  delUrl = "http://" + endpoint + "/channels/" + channelId + "/feeds.json?api_key=" + userKey;

  Serial.print("DELETE " + delUrl);
  if (httpClient.begin(client, delUrl)) {
    Serial.print(":");
    int resCode = httpClient.sendRequest("DELETE");
    String  res = httpClient.getString();
    httpClient.end();
    Serial.println(String(resCode) + "," + res);
  }
  else
    Serial.println(" failed");

  // Returns the redirect response. The page is reloaded and its contents
  // are updated to the state after deletion.
  WiFiWebServer&  webServer = portal.host();
  webServer.sendHeader("Location", String("http://") + webServer.client().localIP().toString() + String("/"));
  webServer.send(302, "text/plain", "");
  webServer.client().flush();
  webServer.client().stop();
}

// Load AutoConnectAux JSON from SPIFFS.
bool loadAux(const String auxName) {
  bool  rc = false;
  String  fn = auxName + ".json";
  File fs = SPIFFS.open(fn.c_str(), "r");
  if (fs) {
    rc = portal.load(fs);
    fs.close();
  }
  else
    Serial.println("SPIFFS open failed: " + fn);
  return rc;
}

void setup() {
  delay(1000);
  Serial.begin(115200);
  Serial.println();
  SPIFFS.begin();

  loadAux(AUX_MQTTSETTING);
  loadAux(AUX_MQTTSAVE);

  AutoConnectAux* setting = portal.aux(AUX_MQTTSETTING);
  if (setting) {
    PageArgument  args;
    AutoConnectAux& mqtt_setting = *setting;
    loadParams(mqtt_setting, args);
    AutoConnectCheckbox&  uniqueidElm = mqtt_setting["uniqueid"].as<AutoConnectCheckbox>();
    AutoConnectInput&     hostnameElm = mqtt_setting["hostname"].as<AutoConnectInput>();
    if (uniqueidElm.checked) {
      config.apid = String("ESP") + "-" + String(GET_CHIPID(), HEX);
      Serial.println("apid set to " + config.apid);
    }
    if (hostnameElm.value.length()) {
      config.hostName = hostnameElm.value;
      Serial.println("hostname set to " + config.hostName);
    }
    config.homeUri = "/";
    portal.config(config);

    portal.on(AUX_MQTTSETTING, loadParams);
    portal.on(AUX_MQTTSAVE, saveParams);
  }
  else
    Serial.println("aux. load error");

  Serial.print("WiFi ");
  if (portal.begin()) {
    config.bootUri = AC_ONBOOTURI_HOME;
    Serial.println("connected:" + WiFi.SSID());
    Serial.println("IP:" + WiFi.localIP().toString());
  } else {
    Serial.println("connection failed:" + String(WiFi.status()));
    while (1) {
      delay(100);
      yield();
    }
  }

  WiFiWebServer&  webServer = portal.host();
  webServer.on("/", handleRoot);
  webServer.on(AUX_MQTTCLEAR, handleClearChannel);
}

void loop() {
  portal.handleClient();
  /*
  if (updateInterval > 0) {
    if (millis() - lastPub > updateInterval) {
      if (!mqttClient.connected()) {
        mqttConnect();
      }
      String item = String("field1=") + String(getStrength(7));
      mqttPublish(item);
      mqttClient.loop();
      lastPub = millis();
    }
  }
  */
}
