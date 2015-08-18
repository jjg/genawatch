length = 41.0;
width = 28.0;
depth = 9.0;
perimeter = 2;

difference(){
	
	// bounding box
	cube([length+perimeter*2,width+perimeter*2,depth+perimeter*2]);
	
	// space needed to hold GENA
	translate([perimeter,perimeter,perimeter]){
		#cube([length,width,depth+perimeter*2]);
	}
}