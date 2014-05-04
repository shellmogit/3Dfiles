// center distances are based on the original

translate([-12.5 + (66 - 12.5) / -2, 0, 0])
 difference() {
  union() {
    translate([3.75, 0, 0]) cylinder(r=9, h = 2, $fn = 36);
    translate([74.55, 0, 0]) cylinder(r=9, h = 2, $fn = 36);
    hull() {
      translate([12.5, 0, 0]) 	 cylinder(r=9, h = 2, $fn = 3);
      translate([12.5 + (66 - 12.5) / 2, 0, 0]) cylinder(r=4.5, h = 2, $fn = 36);
    }
    hull() {
      translate([66, 0, 0]) rotate([0, 0, 180]) cylinder(r=9, h = 2, $fn = 3);
      translate([12.5 + (66 - 12.5) / 2, 0, 0]) cylinder(r=4.5, h = 2, $fn = 36);
    }
  }
  translate([3.75, 0, 0]) cylinder(r=5.25, h = 2, $fn = 36);
  translate([74.55, 0, 0]) cylinder(r=5.25, h = 2, $fn = 36);
  translate([-4, 0, 0]) rotate([0, 0, 45]) translate([-5, -5, 0]) cube([10, 10, 3]);

  hull() {
    translate([12.5 + (66 - 12.5) / 2 - 4.5, 0, 0]) cylinder(r=1.5, h = 2, $fn = 36);
    translate([3.75 + 9 + 3, 0, 0]) cylinder(r=3, h = 2, $fn = 36);
  }

  hull() {
    translate([12.5 + (66 - 12.5) / 2 + 4.5, 0, 0]) cylinder(r=1.5, h = 2, $fn = 36);
    translate([74.55 - 9 - 3, 0, 0]) cylinder(r=3, h = 2, $fn = 36);
  }
 }


