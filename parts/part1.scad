$fn=100;

module part1(){
	
	height=60;
	sphereRadius=7;
	radius=4;
	cubeHeight=10;

	module sphere1(radius){
		slotWidth = radius-2.5;
		drillRadius = 1.5;
		difference(){
			sphere(r=radius,center=true);
			translate([0,0,-3])	
				cube([slotWidth,radius*2,radius*2],true);
			rotate([0,90,0])
				cylinder(radius*2,drillRadius,drillRadius,true);
		}
	}

	
	union(){
		//cylinder
		cylinder(height,radius,radius,true);
		
		//cube
		translate([0,0,height/2+cubeHeight/2])
				cube([radius-1,radius-1,cubeHeight],true);

		//sphere
		translate([0,0,-(height/2+sphereRadius-2)])
			sphere1(sphereRadius);
	}
	
};

part1();