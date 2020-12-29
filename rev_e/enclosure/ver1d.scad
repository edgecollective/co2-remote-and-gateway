/* This module constructs the main body of the enclosure. First, we name the module: */
$fn = 50; //NUMBER OF FRAGMENTS for arc rendering
//pcb dimensions (mm)
pcb_l = 92; // (x dim, edges of PCB)
pcb_w = 69.5; // (y dim, edges of PCB)
pcb_h = 30; // (z dim, from bottom of PCB to top with placed components / headers / etc)r

wall_thickness = 2.5;
buffer = 10;
minkowski_radius = buffer; //special parameter for box rounding

//base specific dimensions
base_height = pcb_h + 10;

//pcb_platform
pcb_platform_thickness = 2;
//pcb vertical location in z (absolute)
//pcb_vertical_location = wall_thickness;
pcb_vertical_location = minkowski_radius+pcb_h/5;

// inner cubic cavity size overall, not including minkowski radius
cavity_l = pcb_l; // x dim
cavity_w = pcb_w; // y dim
cavity_h = pcb_vertical_location + pcb_h; // z dim

// outer dimensions
outer_l = cavity_l + 2*wall_thickness + 2*minkowski_radius;
outer_w = cavity_w + 2*wall_thickness + 2*minkowski_radius;
outer_h = cavity_h + 2*wall_thickness + 2*minkowski_radius;

//top cover height
cover_height = 10;
lip_height   = wall_thickness;
lip_width    = wall_thickness/2;

ORIGIN_TO_PCB_VECTOR = [minkowski_radius+wall_thickness,
                        minkowski_radius+wall_thickness,
                        pcb_vertical_location];


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
    translate(ORIGIN_TO_PCB_VECTOR)
    cube([cavity_l,cavity_w,pcb_platform_thickness],false);
}

module minkowski_dish(l,w,h,t,r){
    //l, w, h pertain to outer_dimensions
    //shift the origin to the outer bounding box bottom left corner
    
    difference()
    {
        //this is the outer solid
        minkowski()
        {
            cube([l-2*r,w-2*r,h-2*r],center=true);
            sphere(r);
        };
        //this is the inner cavity
        minkowski()
        {
            cube([l-2*r-2*t,w-2*r-2*t,h-2*r-2*t],center=true);
            sphere(r);
        };
        //this cuts the top off
        translate([0,0,h-2*r-2*t])
        cube([2*l,2*w,h], center=true);
    }
}

module enclosureBottom() {
    translate([outer_l/2,outer_w/2,outer_h/2])
    union(){
        //outer shell
        minkowski_dish(l=outer_l,
                       w=outer_w,
                       h=outer_h,
                       t=wall_thickness/2,
                       r=minkowski_radius
                       );
        //inner shell, fcylinderorms recessed flange for lid
        minkowski_dish(l=outer_l-wall_thickness,
                       w=outer_w-wall_thickness,
                       h=outer_h-wall_thickness,
                       t=wall_thickness/2,
                       r=minkowski_radius
                       );
        //posts for lid screws (this is crazy)
        intersection(){
            t = 3*wall_thickness;
            translate([0,0,t])
            minkowski_dish(l=outer_l-wall_thickness,
                       w=outer_w-wall_thickness,
                       h=outer_h+t,
                       t=t,
                       r=minkowski_radius
                       );
            union(){
                translate([-outer_l/2,-outer_w/2,-outer_h/2+wall_thickness])
                rotate([0,0,45])
                cube([3*minkowski_radius,3*minkowski_radius,2*outer_h],center=true);
                translate([ outer_l/2,-outer_w/2,-outer_h/2+wall_thickness])
                rotate([0,0,45])
                cube([3*minkowski_radius,3*minkowski_radius,2*outer_h],center=true);
                translate([ outer_l/2, outer_w/2,-outer_h/2+wall_thickness])
                rotate([0,0,45])
                cube([3*minkowski_radius,3*minkowski_radius,2*outer_h],center=true);
                translate([-outer_l/2, outer_w/2,-outer_h/2+wall_thickness])
                rotate([0,0,45])
                cube([3*minkowski_radius,3*minkowski_radius,2*outer_h],center=true);
            }
        }
    } 
}

module enclosureHoles() {
    translate(ORIGIN_TO_PCB_VECTOR)    
    union() {
        // USB
        usb_l = 20;
        #translate([-usb_l,usb_y,usb_z])
        cube([usb_l, usb_dy, usb_dz]);
        // button #1
        button1_l = 20;
        #translate([0,button1_y,button1_z])
        rotate([0,-90,0])
        cylinder(r=button1_radius, h=button1_l);
        // button #2
        button2_l = 20;
        #translate([0,button2_y,button2_z])
        rotate([0,-90,0])
        cylinder(r=button2_radius, h=button2_l);
        // lora antenna hole
        lora_l = 20;
        #translate([lora_x,cavity_w,lora_z])
        rotate([-90,0,0])
        cylinder(r=lora_hole_radius, h=lora_l);
        //pcb hole 1
        #translate([h1_x,h1_y,0])
        cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);
        //pcb hole 2
        #translate([h2_x,h2_y,0])
        cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);
        //pcb hole 3
        #translate([h3_x,h3_y,0])
        cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);
        //pcb hole 4
        #translate([h4_x,h4_y,0])
        cylinder(r=mounting_hole_radius, h=pcb_platform_thickness*4);
        //screen 
        #translate([screen_x,screen_y,0])
        cube([screen_dx,screen_dy,20],center=false);  
         //mic
        #translate([mic_x,mic_y,0])
        cylinder(r=mic_radius, h=pcb_platform_thickness*4);

    }
}

module enclosure() {
    difference() {
        enclosureBottom();
        enclosureHoles();

    }
    pcb_platform(); //NOTE dev use only!

}


// RENDER BOTTOM
enclosure();
