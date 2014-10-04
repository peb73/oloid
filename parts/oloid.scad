$fn=200;

module oloid(rOloid, rDrill) {
	difference(){
		//oloid
   		hull() {
	    		cylinder(r=rOloid,h=0.1);
	    		translate([0,rOloid+5,0])
				rotate([0,90,0])
		            cylinder(r=rOloid,h=0.1);
	   	}

		//drill
	   	translate([0,0,0])
			cylinder(r=rDrill, h=(rOloid+10)*2,center=true);
		translate([0,rOloid+5,0])
			rotate([0, 90, 0])
				cylinder(r=rDrill, h=(rOloid+10)*2, center=true);
	}
};

oloid(30,2.5);