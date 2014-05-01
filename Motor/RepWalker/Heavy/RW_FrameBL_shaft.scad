import("RW_frameBL_original.stl");

x = 54.75;
y =  7;

hull() {
  union() {
   translate([x, y, 0]) {
    cylinder(r1=4, r2=5, h=9, $fn = 36);
   }
   translate([x, y-1, 0]) {
    cylinder(r1=5, r2=3, h=9, $fn = 36);
   }
  }
}

translate([x, y, 9]) {
  cylinder(r=4, h=2, $fn = 36);
}
translate([x, y, 11]) {
  cylinder(r1=4.5, r2=4.9, h=1, $fn = 36);
}
translate([x, y, 12]) {
  cylinder(r=4.9, h=8, $fn = 36);
}
translate([x, y, 20]) {
  cylinder(r=4, h=2, $fn = 36);
}
translate([x, y, 22]) {
  cylinder(r1=4.75, r2=5, h=1, $fn = 36);
}
translate([x, y, 23]) {
  cylinder(r1=5, r2=4.9, h=1, $fn = 36);
}

