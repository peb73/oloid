$fn=100;

module part1(){
	
	height=60;
	radius=4;
	cubeHeight=10;
	deep=10.5;
	dRadius=2.25;

	module sphere1(deep,dRadius){		
		height = 1.75*deep;
		translate([0,0,-height/2]){
			difference(){
				cube([deep+3,deep+3,height],center=true);
				translate([0,0,-2])	
					cube([deep+0.5,height+1,height],center=true);
				translate([0,0,-(height/2-dRadius)/2])
					rotate([0,90,0])
						cylinder(h=deep+4*2+1,r=dRadius,center=true);
			}
		}
	}

	union(){
		//cylinder
		union(){
			cylinder(height,radius,radius,true);
			//cylinder(3,radius+2, radius+2, true);
		}
		//cube
		translate([0,0,height/2+cubeHeight/2])
				cube([radius-1,radius-1,cubeHeight],true);

		//sphere
		translate([0,0,-height/2])
			sphere1(deep,dRadius);
	}
	
};

part1();