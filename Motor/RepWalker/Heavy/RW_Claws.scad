module clawL() {
  difference() {
    union() {
      translate([-11.5, -25.25, 15]) 
        import("RW_Claw_original.stl");
      cylinder(r = 8, h = 8, $fn = 36);
      translate([0, 20, 0])
        cylinder(r = 5, h = 17, $fn = 36);

      difference() {
        translate([0, 20, 10.5])
          cylinder(r1 = 5.75, r2 = 6, h = 2, $fn = 36);
        translate([0, 20, 10.5])
          cylinder(r = 4,             h = 2,  $fn = 36);
      }
      difference() {
        translate([0, 20, 15])
          cylinder(r1 = 5.75, r2 = 6, h = 2,  $fn = 36);
        translate([0, 20, 15])
          cylinder(r  = 4,            h = 2, $fn = 36);
      }
    }
    cylinder(r = 5, h = 10, $fn = 36);
    translate([0, 20, 0])
      cylinder(r1 = 3, r2 = 2, h = 5, $fn = 36);
   }
}

module clawR() {
 mirror([1, 0, 0]) clawL();
}

translate([ 14, 0, 0]) clawL();
translate([-14, 0, 0]) clawR();
