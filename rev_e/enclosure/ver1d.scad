/* This module constructs the main body of the enclosure. First, we name the module: */

//pcb dimensions (mm)
pcb_l = 92; // (x dim, edges of PCB)
pcb_w = 69.5; // (y dim, edges of PCB)
pcb_h = 30; // (z dim, from bottom of PCB to top with placed components / headers / etc)r

wall_thickness = 2.5;
buffer = 10;

// inner cubic cavity size overall, not including minkowski radius
cavity_l = pcb_l; // x dim
cavity_w = pcb_w; // y dim
cavity_h = pcb_h; // z dim

// outer dimensions
minkowski_radius = buffer;
outer_l = cavity_l + 2*wall_thickness + minkowski_radius;
outer_w = cavity_w + 2*wall_thickness + minkowski_radius;
outer_h = cavity_h + 2*wall_thickness + minkowski_radius;

//base specific dimensions
base_height = pcb_h + 10;

//pcb_platform
pcb_platform_thickness = 2;
//pcb vertical location in z (absolute)
//pcb_vertical_location = wall_thickness;
pcb_vertical_location = minkowski_radius+pcb_h/5;


//top cover height
cover_height = 10;
lip_height   = wall_thickness;
lip_width    = wall_thickness/2;


// button 1
button1_radius = 3.5; //mm
button1_y = 12.132; //y position of button, measured from bottom of pcb(center of its thickness)
button1_z = 5; //z position of button, measured from location of pcb bottom

// button 2
button2_radius = button1_radius;
button2_y = 22.57;
button2_z = 5;

// mic
mic_radius = 5;
mic_x = 68.5; //x position of center of mic, measured from left of pcb
mic_y = 52.5; //y position of center of mic, measured from bottom edge of pcb

// usb opening
usb_y = 44.662; //y position of usb, measured from pcb bottom
usb_dy = 10; // width of usb opening
usb_z = 15; //z position of usb, measured from pcb bottom
usb_dz = 8; // height of usb opening

//screen
screen_x = 20; //x position of left side of screen, measured from left side of pcb
screen_y = 32; //y position of bottom of screen, measured from bottom of pcb
screen_dx = 35; //length of screen (x dim)
screen_dy = 20; // width of screen (y dim)

//lora antenna opening
lora_hole_radius=5/2;
lora_x=85;
lora_z=15;


//pcb mounting holes
mounting_hole_radius=2.7/2;

//pcb mounting hole 1
h1_x=3.310;
h1_y=65.520;

//pcb mounting hole 21
h2_x=88.590;
h2_y=65.530;

//pcb mounting hole 3
h3_x=3.310;
h3_y=3.530;

//pcb mounting hole 4
h4_x=88.640;
h4_y=3.522;



module pcb_platform() {
    translate([minkowski_radius,
               minkowski_radius,
               pcb_vertical_location ])
    cube([cavity_l,cavity_w,pcb_platform_thickness],false);
}

module enclosure() {
    union(){
    //shift the origin to the outer bounding box bottom left corner
    translate([outer_l/2 + minkowski_radius/2,
               outer_w/2 + minkowski_radius/2,
               outer_h/2 + minkowski_radius/2])
    difference()
    {
        //this is the outer solid
        minkowski()
        {
            cube([outer_l - minkowski_radius,
                  outer_w - minkowski_radius,
                  outer_h - minkowski_radius],center=true);
            sphere(minkowski_radius);
        };
        //this is the inner cavity
        minkowski()
        {
            cube([cavity_l,
                  cavity_w,
                  cavity_h],center=true);
            sphere(minkowski_radius);
        };

    }
    pcb_platform();
}
}

module enclosureHoles() {

union() {

// USB
translate([-wall_thickness,minkowski_radius+usb_y,pcb_vertical_location+usb_z])
cube([3*wall_thickness, usb_dy, usb_dz]);

// button #1
translate([minkowski_radius,minkowski_radius+button1_y,pcb_vertical_location+button1_z])
rotate([0,-90,0])
cylinder(r=button1_radius, h=5*wall_thickness);
    
// button #2
translate([minkowski_radius,minkowski_radius+button2_y,pcb_vertical_location+button2_z])
rotate([0,-90,0])
cylinder(r=button2_radius, h=5*wall_thickness);
    
    // lora antenna hole
translate([minkowski_radius+lora_x,minkowski_radius+cavity_w,pcb_vertical_location+lora_z])
rotate([-90,0,0])
cylinder(r=lora_hole_radius, h=10*wall_thickness);


//pcb hole 1
    translate([minkowski_radius+h1_x,minkowski_radius+h1_y,pcb_vertical_location])
cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);

//pcb hole 2
    translate([minkowski_radius+h2_x,minkowski_radius+h2_y,pcb_vertical_location])
cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);

//pcb hole 3
    translate([minkowski_radius+h3_x,minkowski_radius+h3_y,pcb_vertical_location])
cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);

//pcb hole 4
    translate([minkowski_radius+h4_x,minkowski_radius+h4_y,pcb_vertical_location])
cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);

//screen 
 translate([minkowski_radius+screen_x,minkowski_radius+screen_y,pcb_vertical_location])
 cube([screen_dx,screen_dy,20],center=false);
 
 
 //mic
 translate([minkowski_radius+mic_x,minkowski_radius+mic_y,pcb_vertical_location])
 cylinder(r=mic_radius, h=pcb_platform_thickness*4);
/*
// button #2
translate([-cavity_l/2,button2_y,button2_z])
rotate([0,-90,0])
cylinder(r=button2_radius, h=10*wall_thickness);
    
// Screen
translate([screen_x-screen_dx/2,screen_y-screen_dy/2,cavity_h/2])
cube([screen_dx, screen_dy,10*wall_thickness]);

// mic
translate([mic_x,mic_y,cavity_h/2-10*wall_thickness/2])
cylinder(r=mic_radius, h=20*wall_thickness);
*/

}
}

module concat() {


difference() {
enclosure();
enclosureHoles();
}

}


// RENDER FULL
//concat();

/* To actually print, we’ll need to render it in two separate halves which we will attach later. So, comment out the above concat() command and instead run the below code to render the top only */


// RENDER COVER (by subtracting bottom)
//difference() {
//concat();
//translate([0,0,-cover_height])
//cube([cavity_l*1.5,cavity_w*1.5,cavity_h], center=true);
////carve the lip out of the rim
// 
//}

//translate([0,0,cover_height-lip_height-wall_thickness/2])
//cube([cavity_l+lip_width/2,cavity_w+lip_width/2,lip_height]);   


//// RENDER BOTTOM (by subtracting top)
difference() {
concat();
translate([-outer_l/2,-outer_w/2,base_height])
cube([outer_l*2,outer_w*2,outer_h]);
}