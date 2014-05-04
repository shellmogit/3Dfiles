module cring(x, y) {
  difference() {
    translate([x +  3.75, y, 0]) cylinder(r=8, h = 2, $fn = 36);
    translate([x +  3.75, y, 0]) cylinder(r=4.25, h = 2, $fn = 36);
    translate([x + -4,    y, 0])
      rotate([0, 0, 45])
        translate([-4, -4, 0])
          cube([8, 8, 2]);
    translate([x + -1.5, y, 0]) cylinder(r=3, h = 2, $fn = 36);
    translate([x + -1,   y, 0]) cylinder(r=2.5, h = 2, $fn = 36);
  }
}

// multiple C-rings
// for (j=[0:1]) for (i=[0:3]) cring(i*15, j*18);

cring(0,0);

