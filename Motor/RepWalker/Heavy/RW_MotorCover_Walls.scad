// wall supporting parts for the motor cover

module wallPart() {
  difference() {
    union() {
      rotate([0, 0, 30]) cylinder(r=5, h=11.5, $fn = 6);
      translate([-4.5, -5, 0]) cube([4.5, 10, 11.5]);
    }
    rotate([0, 0, 30]) cylinder(r=3.45, h=9, $fn = 6);
	cylinder(r=1.6, h=12, $fn = 36);

    translate([-6, -5, 2]) rotate([0, 60, 0]) cube([20, 10, 20]);
  }
}

translate([26.3, 8, -14.5]) wallPart();
translate([4.3, 8, -14.5]) rotate([0, 0, 180]) wallPart();
  

