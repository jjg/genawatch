design_version = "V13";
length = 41.0;
width = 28.5;
depth = 9.0;
perimeter = 2;
button_nub = 3;
face_length = 27;
face_width = 24;

union(){
	difference(){
		union(){
			
			// bounding box
			cube([length+perimeter*2,width+perimeter*2,depth+perimeter*2]);
	
			// band connectors (from thing #228757)
			translate([-(length/2)+3,width-1.5,3]){
				import("pin_loop.stl");
			}
			//translate([(length*2)-17.5,5.5,3]){
			translate([length-16,width-1.3,3]){
				//rotate([0,0,180]){
					import("pin_loop.stl");
				//}
			}
		}
		
		// space needed to hold GENA
		translate([perimeter,perimeter,-perimeter]){
			cube([length,width,depth+perimeter*2]);
		}

		// opening for watch face
		translate([9.5,4.5,depth+1]){
			#cube([face_length, face_width,perimeter+2]);
		}
		
		// watermark
		translate([length+(perimeter*2)-1,width/2-2,8]){
			rotate([90,0,0]){
				rotate([0,90,0]){
					linear_extrude(height = 10){
					   #text(design_version,size=4);
					}
				}
			}
		}
		
		// usb opening
		translate([16.5,-1,-1]){
			#cube([12,perimeter+2,depth]);
		}
		
		// left button slot
		translate([32.5,-1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		translate([32.5,perimeter-1,-1]){
			cube([6,2,depth+perimeter+1]);
		}
		translate([38.5,-1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		
		// right top button slot
		translate([6,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		translate([6,width+perimeter-1,-1]){
			cube([6,2,depth+perimeter+1]);
		}
		translate([12,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		
		// right middle button slot
		translate([18.5,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		translate([18.5,width+perimeter-1,-1]){
			cube([6,2,depth+perimeter+1]);
		}
		translate([24.5,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		
		// right bottom button slot
		translate([32.5,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
		translate([32.5,width+perimeter-1,-1]){
			cube([6,2,depth+perimeter+1]);
		}
		translate([38.5,width+1,-1]){
			cube([1,perimeter+2,depth+perimeter+1]);
		}
	}

	// left button nub
	translate([36,-.8,depth-perimeter]){
		sphere(r=button_nub);
	}

	// right top button nub
	translate([9.5,width+perimeter+(button_nub/2)+1.3,depth-perimeter]){
		sphere(r=button_nub);
	}
	
	// right middle button nub
	translate([22,width+perimeter+(button_nub/2)+1.3,depth-perimeter]){
		sphere(r=button_nub);
	}
	
	// right bottom button nub
	translate([36,width+perimeter+(button_nub/2)+1.3,depth-perimeter]){
		sphere(r=button_nub);
	}
}