import("RW_frameBR_original.stl");

x =  13.5;
y =  7;
z = -22.2;

hull() {
  union() {
   translate([x, y, z]) {
    cylinder(r1=4, r2=5, h=9, $fn = 36);
   }
   translate([x, y-1, z]) {
    cylinder(r1=5, r2=3, h=9, $fn = 36);
   }
  }
}

translate([x, y, z+9]) {
  cylinder(r=4, h=2, $fn = 36);
}
translate([x, y, z+11]) {
  cylinder(r1=4.5, r2=4.9, h=1, $fn = 36);
}
translate([x, y, z+12]) {
  cylinder(r=4.9, h=8, $fn = 36);
}
translate([x, y, z+20]) {
  cylinder(r=4, h=2, $fn = 36);
}
translate([x, y, z+22]) {
  cylinder(r1=4.75, r2=5, h=1, $fn = 36);
}
translate([x, y, z+23]) {
  cylinder(r1=5, r2=4.9, h=1, $fn = 36);
}

