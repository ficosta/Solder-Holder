use <roundedRect.scad>
use <MCAD/materials.scad>


$fn=30;

module bobina(){
translate([-27.5,10,40]){
	rotate([0,90,0]){
		translate([0,0,-12.5]){
			cylinder(r=6,h=80);
		}
		difference(){
			cylinder(r=27.5,h=55);
			cylinder(r=9,h=55);
		}
		}
	}
}
 
module base(){

difference(){
roundedRect([72,72,7],7);
translate([-21,-25,0]){
	linear_extrude(height=10) import("logo_garoa.dxf", layer="guardachuva");
}
	translate([34,17.5,0]){
	cylinder(r=2,h=9);
}
	translate([34,2.5,0]){
	cylinder(r=2,h=9);
}

	translate([-34,17.5,0]){
	cylinder(r=2,h=9);
}
	translate([-34,2.5,0]){
	cylinder(r=2,h=9);
}

}
}

module support(){
	

	translate([30.5,10,24]){
		suporteLateral();
	}
	translate([-37.5,10,24]){
		suporteLateral();
	}

}
module suporteLateral(){
	rotate([0,90,0]){
		translate([-4.5,0,0]){
			difference(){	
				roundedRect([36,27,7],7);
				translate([-11.5,0,0]){
					cylinder(r=6,h=72);
				}
				translate([11.5,5,0]){
					furos();
				}	
				translate([11.5,-10,0]){
					furos();
				}				
			}
		}
	}
}

module furos(){
		translate([0,2.5,3.5]){
			rotate([0,90,0]){
				cylinder(r=2,h=20);
			}
		}

		translate([3,-0.7,0]){
			cube([3,5.5,7],7);
		}
}

translate([0,0,0]){
	rotate([0,-90,0]){
		//suporteLateral();
	}
}
union(){
translate([0,0,-0.1]){
//support();
}
base();
}
//bobina();

