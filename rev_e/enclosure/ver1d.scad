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

//top cover height
cover_height = 10;
lip_height   = wall_thickness;
lip_width    = wall_thickness/2;

// button 1
button1_radius = 3.5; //mm
button1_y = -12.09;
button1_z = 5;

// button 2
button2_radius = button1_radius;
button2_y = -22.53;
button2_z = button1_z;

// mic
mic_radius = 7;
mic_x = 22.5;
mic_y = 17;

// usb opening
usb_y = 9.98;
usb_dy = 10;
usb_z = 15;
usb_dz = 8;

//screen
screen_x = -7; //x position of center of screen
screen_y = 10; //y position of center of screen
screen_dx = 35; //length of screen (x dim)
screen_dy = 20; //

module enclosure() {
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
}

module enclosureHoles() {

union() {

// USB
translate([-cavity_l/2-10,usb_y-usb_dy/2,usb_z-usb_dz/2])
cube([10*wall_thickness, usb_dy, usb_dz]);
    
// button #1
translate([-cavity_l/2,button1_y,button1_z])
rotate([0,-90,0])
cylinder(r=button1_radius, h=10*wall_thickness);

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