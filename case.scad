design_version = "V8";
length = 41.0;
width = 28.5;
depth = 9.0;
perimeter = 2;
button_nub = 3;

union(){
	difference(){
		
		// bounding box
		cube([length+perimeter*2,width+perimeter*2,depth+perimeter*2]);
		
		// space needed to hold GENA
		translate([perimeter,perimeter,perimeter]){
			cube([length,width,depth+perimeter*2]);
		}
		
		// watermark
		rotate([0,180,0]){
			translate([-length/2,width/2,-1.5]){
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
		translate([32.5,-1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		translate([32.5,perimeter-1,perimeter+1]){
			cube([6,2,depth+perimeter]);
		}
		translate([38.5,-1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		
		// right top button slot
		translate([6,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		translate([6,width+perimeter-1,perimeter+1]){
			cube([6,2,depth+perimeter]);
		}
		translate([12,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		
		// right middle button slot
		translate([18.5,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		translate([18.5,width+perimeter-1,perimeter+1]){
			cube([6,2,depth+perimeter]);
		}
		translate([24.5,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		
		// right bottom button slot
		translate([32.5,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
		translate([32.5,width+perimeter-1,perimeter+1]){
			cube([6,2,depth+perimeter]);
		}
		translate([38.5,width+1,perimeter+1]){
			cube([1,perimeter+2,depth+perimeter]);
		}
	}

	// left button nub
	translate([36,-.7,depth]){
		sphere(r=button_nub);
	}
	
	// right top button nub
	translate([9.5,width+perimeter+(button_nub/2)+1.2,depth]){
		sphere(r=button_nub);
	}
	
	// right middle button nub
	translate([22,width+perimeter+(button_nub/2)+1.2,depth]){
		sphere(r=button_nub);
	}
	
	// right bottom button nub
	translate([36,width+perimeter+(button_nub/2)+1.2,depth]){
		sphere(r=button_nub);
	}
}