cavity_length=100;
cavity_width=75;
cavity_height=25;

bend_band=5;
slice=4;
smidge=30;

difference() {
union() {
    //1
translate([-cavity_height,0,0])
square([cavity_height,cavity_width],false);

//2
square([cavity_length,cavity_width],false);

//3
translate([cavity_length,0,0])
square([cavity_height,cavity_width],false);

//4
translate([cavity_length+cavity_height,0,0])
square([cavity_length,cavity_width],false);

//5
translate([2*cavity_length+cavity_height,0,0])
square([cavity_height,cavity_width],false);

//6
translate([cavity_length+cavity_height,cavity_width,0])
square([cavity_length,cavity_height+bend_band],false);

//7
translate([cavity_length+cavity_height,-(cavity_height+bend_band),0])
square([cavity_length,cavity_height+bend_band],false);

//6a
translate([cavity_length+cavity_height,cavity_width+cavity_height+bend_band,0])
square([cavity_length,bend_band],false);

//7a
translate([cavity_length+cavity_height,-(cavity_height+bend_band+bend_band),0])
square([cavity_length,bend_band],false);

//8
translate([cavity_length+cavity_height,cavity_width+cavity_height+bend_band+bend_band,0])
square([cavity_length,cavity_height],false);

//9
translate([cavity_length+cavity_height,-(cavity_height+bend_band+bend_band+cavity_height),0])
square([cavity_length,cavity_height],false);

//3A
translate([cavity_length+slice,cavity_width,0])
square([cavity_height-1.5*slice,cavity_height],false);

//5A
translate([2*cavity_length+cavity_height+.5*slice,cavity_width,0])
square([cavity_height-2*slice,cavity_height],false);

//3B
translate([cavity_length+slice,-cavity_height,0])
square([cavity_height-1.5*slice,cavity_height],false);

//5B
translate([2*cavity_length+cavity_height+.5*slice,-cavity_height,0])
square([cavity_height-2*slice,cavity_height],false);

//8A
translate([cavity_length+cavity_height+smidge,cavity_width+cavity_height+bend_band+bend_band+cavity_height,0])
square([cavity_length-2*smidge,bend_band*2],false);

//9A
translate([cavity_length+cavity_height+smidge,-(cavity_height+bend_band+bend_band+cavity_height+bend_band*2),0])
square([cavity_length-2*smidge,bend_band*2],false);


//2A
difference(){
translate([slice,cavity_width,0])
square([cavity_length-2*slice,cavity_height/2],false);

translate([slice,cavity_width,0])
polygon(points=[[0,0],[0,cavity_height],[2*slice,cavity_height],[0,0]]);
    
translate([cavity_length-slice,cavity_width,0])
polygon(points=[[0,0],[0,cavity_height],[-2*slice,cavity_height],[0,0]]);
}




//2B
difference() {
translate([slice,-cavity_height/2,0])
square([cavity_length-2*slice,cavity_height/2],false);

translate([slice,0,0])
polygon(points=[[0,0],[0,-cavity_height],[2*slice,-cavity_height],[0,0]]);
    
translate([cavity_length-slice,0,0])
polygon(points=[[0,0],[0,-cavity_height],[-2*slice,-cavity_height],[0,0]]);
    
}

//1A
difference() {
translate([-cavity_height,cavity_width,0])
square([cavity_height*.8,cavity_height],false);
    
    translate([-cavity_height,cavity_width,0])
polygon(points=[[0,0],[0,cavity_height],[slice*3,cavity_height],[0,0]]);
}

//1B
difference() {
translate([-cavity_height,-cavity_height,0])
square([cavity_height*.8,cavity_height],false);

translate([-cavity_height,-cavity_height,0])
polygon(points=[[0,0],[0,cavity_height],[slice*3,0],[0,0]]);
    
}
}


union() {
//6B
translate([cavity_length+cavity_height+smidge,cavity_width-bend_band,0])
square([cavity_length-2*smidge,bend_band],false);

//7B
translate([cavity_length+cavity_height+smidge,0,0])
square([cavity_length-2*smidge,bend_band],false);

}


}

