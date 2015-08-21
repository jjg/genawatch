design_version = "V4";
length = 41.0;
width = 28.5;
depth = 9.0;
perimeter = 2;

difference(){
	
	// bounding box
	cube([length+perimeter*2,width+perimeter*2,depth+perimeter*2]);
	
	// space needed to hold GENA
	translate([perimeter,perimeter,perimeter]){
		cube([length,width,depth+perimeter*2]);
	}
	
	// watermark
    rotate([0,180,0]){
        translate([-length/2,width/2,-1]){
            linear_extrude(height = 10){
               text(design_version,size=4);
            }
        }
    }
	
	// usb opening
	translate([16,-1,perimeter+5]){
		cube([13,perimeter+2,depth+perimeter]);
	}
	
	// left button slot
	translate([33,-1,perimeter+1]){
		#cube([1,perimeter+2,depth+perimeter]);
	}
	translate([39,-1,perimeter+1]){
		#cube([1,perimeter+2,depth+perimeter]);
	}
	
	// right top button slot
	
	// right middle button slot
	
	// right bottom button slot
}