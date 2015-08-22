design_version = "V10";
length = 41.0;
width = 28.5;
depth = 9.0;
perimeter = 2;
button_nub = 3;
case_width = 45;
case_length = 45;
face_length = 30;
face_width = 25;

union(){
	difference(){
		
		// bounding box
		//cube([length+perimeter*2,width+perimeter*2,depth+perimeter*2]);
		translate([0,-6,0]){
			cube([case_length,case_width,depth+perimeter*2]);
		}
		
		// space needed to hold GENA
		translate([perimeter,perimeter,-perimeter]){
			cube([length,width,depth+perimeter*2]);
		}
		
		// opening for watch face
		translate([6,3,depth+1]){
			cube([face_length, face_width,perimeter+2]);
		}
/*
		// face opening champher
		translate([6,3,depth+10]){
			rotate([180,0,0]){
				#polyhedron(
					points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0],
						[0,0,10]  ],
					faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],
						[1,0,3],[2,1,3] ]
				);
			}
		}
*/
		
		// watermark
		rotate([0,180,0]){
			translate([-length/2,width/2,-1.5]){
				linear_extrude(height = 10){
				   text(design_version,size=4);
				}
			}
		}
		
		// usb opening
		translate([16,-1-6,-1]){
			#cube([13,perimeter+2+6,depth+1]);
		}
		
		// left button slot
		translate([32.5,-1-6,-1]){
			cube([1,perimeter+2+6,depth+perimeter+1]);
		}
		translate([32.5,perimeter-1-6,-1]){
			cube([6,2+6,depth+perimeter+1]);
		}
		translate([38.5,-1-6,-1]){
			cube([1,perimeter+2+6,depth+perimeter+1]);
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
	translate([36,-.7,depth-perimeter]){
		rotate([90,0,0]){
			cylinder(r=button_nub,h=6);
		}
	}
	translate([36,-.7,depth-perimeter]){
		sphere(r=button_nub);
	}
	
	// right top button nub
	translate([9.5,width+perimeter+(button_nub/2)+1.2,depth-perimeter]){
		sphere(r=button_nub);
	}
	
	// right middle button nub
	translate([22,width+perimeter+(button_nub/2)+1.2,depth-perimeter]){
		sphere(r=button_nub);
	}
	
	// right bottom button nub
	translate([36,width+perimeter+(button_nub/2)+1.2,depth-perimeter]){
		sphere(r=button_nub);
	}
}