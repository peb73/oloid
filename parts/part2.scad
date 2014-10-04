$fn = 200;

module part2(radius, deep, dRadius){

	module ring(radius,deep){
		difference() {
			cylinder(h=deep, r=radius+5, center=true);
			cylinder(h=deep+1, r=radius, center=true);		
		}
	};

	module drill(height,radius){
		rotate([0,90,0]){
			cylinder(h=height,r=radius, center=true);
		}
	};
	
	difference(){
		ring(radius,deep);
		drill((radius+5.5)*2,dRadius+0.5);
		translate([0,(radius+5.5)/2+(dRadius+0.5)+5,0]){
			cube([(radius+5.5)*2,radius+5.5,(deep+0.5)*2],center=true);
		}
	}
}

part2(30,20,4.5);

