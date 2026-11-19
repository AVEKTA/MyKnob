// ==========================================
// MyKnob - Parametric Encoder and Potentiometer Knob Generator with Customizations
// Copyright (c) 2026 AVEKTA
// Licensed under the MIT License (https://opensource.org)
// ==========================================

/* [Main Dimensions] */
// Total knob height from skirt bottom to top face (mm)
Overall_Height        = 12.0;  // [5.0:0.1:40.0]
// Total outer width at the base (mm)
Outside_Diameter      = 15.0;  // [8.0:0.1:50.0]
// Inward taper angle of the outer wall from bottom to top (degrees)
Wall_Taper_Angle      = 0.0;   // [0.0:0.1:10.0]
// Engagement depth of the 6mm shaft hole above the recess (mm)
Bore_Depth            = 6.50;  // [1.00:0.01:30.00]
// Wall thickness of the lower shrouding skirt (mm)
Skirt_Thickness       = 2.00;  // [0.50:0.01:15.00]
// How far the shaft bore starts above the skirt bottom (mm)
Skirt_Recess_Depth    = 3.00;  // [0.00:0.01:20.00]
// 45-deg chamfer at top of skirt recess for clean bridging (mm)
Skirt_Inner_Chamfer   = 0.8;   // [0.0:0.1:5.0]

/* [Top Inlay Pocket] */
// Inside diameter of the top inlay pocket (mm)
Inlay_Diameter        = 10.00; // [0.00:0.01:45.00]
// Depth of the inlay recess from the top surface (0 = disabled)
Inlay_Depth           = 0.00;  // [0.00:0.01:10.00]
// 45-deg bevel around the inner rim of the inlay pocket (mm)
Inlay_Chamfer         = 0.3;   // [0.0:0.1:3.0]
// Add a central through-hole connecting the shaft bore to the inlay pocket for glue venting/removal
Enable_Glue_Vent      = false;
// Diameter of the central glue vent / knockout pin hole (mm)
Glue_Vent_Diameter    = 1.20;  // [0.60:0.01:3.00]

/* [Shaft Fitment] */
// "D" for flatted D-shaft, "ROUND" for smooth/splined shaft
Shaft_Type            = "D";   // [D, ROUND]
// Nominal 6.0mm + FDM print clearance (mm) (Imperial 1/4" shaft - 6.35mm nominal)
Shaft_Diameter        = 6.20;  // [5.50:0.01:7.00]
// Nominal 4.5mm + FDM print clearance (mm) (Imperial 1/4" shaft - 5.5mm OR 4.75mm nominal)
D_Flat_Thickness      = 4.72;  // [4.00:0.01:6.00]
// Add internal vertical crush ribs for a snug slip fit
Enable_Crush_Ribs     = false;
// Number of crush ribs inside the bore
Crush_Rib_Count       = 3;     // [2:1:8]
// Radial protrusion height of each crush rib (mm)
Crush_Rib_Height      = 0.12;  // [0.04:0.01:0.40]
// Width of each crush rib (mm)
Crush_Rib_Width       = 0.60;  // [0.20:0.01:1.50]

/* [Set Screw + Heat-Set Insert (Optional)] */
// Enable radial set-screw hole (disable for pure slip/press fit)
Enable_Set_Screw      = false;
// Pilot hole diameter (e.g., 2.50mm for M3 tap, 2.05mm for M2.5 tap)
Set_Screw_Diameter    = 2.50;  // [1.50:0.01:4.00]
// Vertical height of the set screw above the recessed bore opening (mm)
Set_Screw_Offset      = 3.25;  // [1.00:0.01:15.00]
// 45-deg countersink chamfer on the outside of the set-screw hole (mm)
Set_Screw_Chamfer     = 0.4;   // [0.0:0.1:2.0]
// Expand the outer portion of the set-screw bore for a brass heat-set insert
Enable_Heat_Set       = false;
// Heat-set insert outer hole diameter (e.g., 3.20mm for M2, 4.00mm for M3 short)
Heat_Set_Diameter     = 3.20;  // [2.50:0.01:6.00]
// Depth of the heat-set insert pocket from the outer wall (mm)
Heat_Set_Depth        = 3.00;  // [1.50:0.01:10.00]

/* [Top Indicator (Optional)] */
// Top visual indicator mark style
Top_Indicator         = "NONE"; // [NONE, DOT, NOTCH]
// Rotation angle of the top indicator relative to the D-shaft flat (degrees)
Indicator_Angle       = 0;     // [-180:1:180]
// Diameter of the indicator dot or width of the notch (mm)
Indicator_Size        = 1.20;  // [0.50:0.01:3.00]
// Depth of the recessed indicator mark (mm)
Indicator_Depth       = 0.60;  // [0.10:0.01:2.00]
// Radial distance of the indicator center from the knob's center axis (mm)
Indicator_Offset      = 5.80;  // [1.00:0.01:22.00]

/* [Knurling + Aesthetics] */
// Grip pattern style
Knurl_Style           = "DIAMOND"; // [DIAMOND, VERTICAL, NONE]
// Spacing control: number of grooves around circumference
Knurl_Count           = 28;    // [0:1:80]
// Diamond angle in degrees from vertical (DIAMOND only)
Knurl_Angle           = 35;    // [5:1:75]
// Depth of knurl grooves (mm)
Knurl_Depth           = 0.30;  // [0.05:0.01:1.50]
// Smooth band above knurling before top bevel (mm)
Knurl_Top_Margin      = 1.20;  // [0.00:0.01:10.00]
// Smooth band at bottom edge of skirt (mm)
Knurl_Bottom_Margin   = 0.80;  // [0.00:0.01:10.00]
// Top outer edge bevel (mm)
Top_Chamfer           = 0.8;   // [0.0:0.1:5.0]
// Bottom outer skirt edge bevel (mm)
Bottom_Chamfer        = 0.4;   // [0.0:0.1:5.0]

/* [Resolution, Orientation + Inspection] */
// Curve segment count ($fn)
Circle_Resolution     = 72;    // [24:1:180]
// Flip upside-down automatically when Inlay_Depth == 0
Auto_Flip_Flat_Top    = false;
// Cut model in half along the centerline to inspect internal wall thicknesses (uncheck before exporting STL)
Show_Cross_Section    = false;
// Rotation angle of the cross-section cut plane around the Z-axis (degrees)
Cross_Section_Angle   = 0;     // [-180:1:180]

$fn = Circle_Resolution;

// ==========================================
// Geometry Generation
// ==========================================

function outer_r_at_z(z) = (Outside_Diameter / 2) - z * tan(Wall_Taper_Angle);

module encoder_knob() {
    base_outer_r = Outside_Diameter / 2;
    top_outer_r  = max((Shaft_Diameter / 2) + 1.0, outer_r_at_z(Overall_Height));
    shaft_r      = Shaft_Diameter / 2;
    inlay_r      = Inlay_Diameter / 2;
    skirt_inner_r = max(shaft_r + 0.2, base_outer_r - Skirt_Thickness);

    eff_bot_chamfer = min(Bottom_Chamfer, max(0, base_outer_r - skirt_inner_r - 0.2), Overall_Height - Top_Chamfer - 0.5);
    eff_top_chamfer = min(Top_Chamfer, Overall_Height - eff_bot_chamfer - 0.5);

    r_z0       = outer_r_at_z(0);
    r_z_bot_ch = outer_r_at_z(eff_bot_chamfer);
    r_z_top_ch = outer_r_at_z(Overall_Height - eff_top_chamfer);
    r_z_top    = outer_r_at_z(Overall_Height);

    difference() {
        // 1. Solid Main Outer Body with Taper, Bottom Chamfer, and Top Chamfer
        union() {
            if (eff_bot_chamfer > 0) {
                cylinder(h = eff_bot_chamfer, r1 = r_z0 - eff_bot_chamfer, r2 = r_z_bot_ch);
            }
            translate([0, 0, eff_bot_chamfer])
                cylinder(h = Overall_Height - eff_bot_chamfer - eff_top_chamfer, r1 = r_z_bot_ch, r2 = r_z_top_ch);
            if (eff_top_chamfer > 0) {
                translate([0, 0, Overall_Height - eff_top_chamfer])
                    cylinder(h = eff_top_chamfer, r1 = r_z_top_ch, r2 = r_z_top - eff_top_chamfer);
            }
        }

        // 2. Outer Grip Knurling (Conforms to Wall Taper)
        if (Knurl_Style != "NONE" && Knurl_Count > 0 && Knurl_Depth > 0) {
            knurl_start_z = max(eff_bot_chamfer, Knurl_Bottom_Margin);
            knurl_end_z   = Overall_Height - eff_top_chamfer - Knurl_Top_Margin;
            knurl_h       = knurl_end_z - knurl_start_z;
            if (knurl_h > 0.5) {
                r_knurl_bot = outer_r_at_z(knurl_start_z);
                r_knurl_top = outer_r_at_z(knurl_end_z);
                translate([0, 0, knurl_start_z]) {
                    if (Knurl_Style == "DIAMOND" && Knurl_Angle > 0) {
                        diamond_knurl_band(
                            r_bot = r_knurl_bot,
                            r_top = r_knurl_top,
                            h = knurl_h,
                            count = Knurl_Count,
                            angle = Knurl_Angle,
                            depth = Knurl_Depth
                        );
                    } else if (Knurl_Style == "VERTICAL") {
                        vertical_knurl_band(
                            r_bot = r_knurl_bot,
                            r_top = r_knurl_top,
                            h = knurl_h,
                            count = Knurl_Count,
                            depth = Knurl_Depth
                        );
                    }
                }
            }
        }

        // 3. Recessed Top Inlay Pocket + Inner Lip Chamfer
        max_inlay_r = r_z_top - eff_top_chamfer - 0.1;
        if (Inlay_Depth > 0 && Inlay_Diameter > 0 && inlay_r < max_inlay_r) {
            translate([0, 0, Overall_Height - Inlay_Depth])
                cylinder(h = Inlay_Depth + 0.05, r = inlay_r);

            max_inlay_chamfer = min(Inlay_Chamfer, Inlay_Depth, max_inlay_r - inlay_r);
            if (max_inlay_chamfer > 0) {
                translate([0, 0, Overall_Height - max_inlay_chamfer])
                    cylinder(
                        h = max_inlay_chamfer + 0.05,
                        r1 = inlay_r,
                        r2 = inlay_r + max_inlay_chamfer
                    );
            }
        }

        // 4. Optional Central Glue Vent / Knockout Pin Hole
        if (Enable_Glue_Vent && Glue_Vent_Diameter > 0) {
            translate([0, 0, Skirt_Recess_Depth])
                cylinder(h = Overall_Height - Skirt_Recess_Depth + 0.1, r = Glue_Vent_Diameter / 2, $fn = 24);
        }

        // 5. Optional Top Indicator (Dot or Notch, oriented relative to D-flat at +Y)
        if (Top_Indicator != "NONE" && Indicator_Size > 0 && Indicator_Depth > 0) {
            rotate([0, 0, Indicator_Angle]) {
                if (Top_Indicator == "DOT") {
                    translate([0, Indicator_Offset, Overall_Height - Indicator_Depth])
                        cylinder(h = Indicator_Depth + 0.05, r = Indicator_Size / 2, $fn = 32);
                } else if (Top_Indicator == "NOTCH") {
                    notch_len = max(0.5, (r_z_top + 0.5) - Indicator_Offset);
                    translate([-Indicator_Size / 2, Indicator_Offset, Overall_Height - Indicator_Depth])
                        cube([Indicator_Size, notch_len, Indicator_Depth + 0.05]);
                }
            }
        }

        // 6. Shrouding Skirt Counterbore + Inner Bridge Chamfer
        if (Skirt_Recess_Depth > 0) {
            translate([0, 0, -0.05])
                cylinder(h = Skirt_Recess_Depth + 0.05, r = skirt_inner_r);

            max_chamfer = min(Skirt_Inner_Chamfer, skirt_inner_r - shaft_r - 0.1);
            if (max_chamfer > 0) {
                translate([0, 0, Skirt_Recess_Depth - 0.01])
                    cylinder(
                        h = max_chamfer + 0.01,
                        r1 = skirt_inner_r,
                        r2 = skirt_inner_r - max_chamfer
                    );
            }
        }

        // 7. 6mm Encoder Shaft Bore (Starts at the recessed hub face)
        translate([0, 0, Skirt_Recess_Depth - 0.05])
            shaft_bore(h = Bore_Depth + 0.05);

        // 8. Small Lead-in Chamfer at the Recessed Bore Opening
        translate([0, 0, Skirt_Recess_Depth - 0.05])
            cylinder(h = 0.65, r1 = shaft_r + 0.4, r2 = shaft_r);

        // 9. Optional Radial Set-Screw Pilot Hole, Heat-Set Insert Pocket & Outer Chamfer
        if (Enable_Set_Screw && Set_Screw_Diameter > 0) {
            screw_z = Skirt_Recess_Depth + Set_Screw_Offset;
            screw_r = Set_Screw_Diameter / 2;
            local_outer_r = outer_r_at_z(screw_z);
            translate([0, 0, screw_z])
                rotate([-90, 0, 0]) {
                    // Main radial pilot hole through wall
                    cylinder(h = local_outer_r + 0.5, r = screw_r, $fn = 36);

                    // Optional Heat-Set Insert Counterbore
                    if (Enable_Heat_Set && Heat_Set_Diameter > Set_Screw_Diameter && Heat_Set_Depth > 0) {
                        hs_r = Heat_Set_Diameter / 2;
                        translate([0, 0, local_outer_r - Heat_Set_Depth])
                            cylinder(h = Heat_Set_Depth + 0.5, r = hs_r, $fn = 36);
                        if (Set_Screw_Chamfer > 0) {
                            translate([0, 0, local_outer_r - Set_Screw_Chamfer])
                                cylinder(
                                    h = Set_Screw_Chamfer + 0.5,
                                    r1 = hs_r,
                                    r2 = hs_r + Set_Screw_Chamfer + 0.5,
                                    $fn = 36
                                );
                        }
                    } else if (Set_Screw_Chamfer > 0) {
                        // Standard outer countersink chamfer on pilot hole
                        translate([0, 0, local_outer_r - Set_Screw_Chamfer])
                            cylinder(
                                h = Set_Screw_Chamfer + 0.5,
                                r1 = screw_r,
                                r2 = screw_r + Set_Screw_Chamfer + 0.5,
                                $fn = 36
                            );
                    }
                }
        }
    }
        // 10. Optional Internal Crush Ribs inside the Shaft Bore
    if (Enable_Crush_Ribs && Crush_Rib_Count > 0 && Crush_Rib_Height > 0 && Crush_Rib_Width > 0) {
        rib_h = max(0.5, Bore_Depth - 0.75);
        // Exact angle where the D-flat meets the bore wall, plus a 12-deg buffer for rib width
        flat_y = D_Flat_Thickness - shaft_r;
        flat_half_span = (Shaft_Type == "D" && abs(flat_y) < shaft_r)
            ? (90 - asin(flat_y / shaft_r)) + 12
            : 0;
        arc_start = 90 + flat_half_span;
        arc_span  = 360 - 2 * flat_half_span;

        translate([0, 0, Skirt_Recess_Depth + 0.65])
            intersection() {
                shaft_bore(h = rib_h);
                for (i = [0 : Crush_Rib_Count - 1]) {
                    ang = (Shaft_Type == "D")
                        ? arc_start + (i + 0.5) * (arc_span / Crush_Rib_Count)
                        : i * (360 / Crush_Rib_Count);
                    rotate([0, 0, ang])
                        translate([shaft_r - Crush_Rib_Height, -Crush_Rib_Width / 2, 0])
                            cube([Crush_Rib_Height + 0.2, Crush_Rib_Width, rib_h]);
                }
            }
    }
}

module vertical_knurl_band(r_bot, r_top, h, count, depth) {
    tilt_angle = atan2(r_top - r_bot, h);
    slant_h = sqrt(h * h + (r_top - r_bot) * (r_top - r_bot));
    for (i = [0 : count - 1]) {
        rotate([0, 0, i * (360 / count)])
            translate([r_bot, 0, 0])
                rotate([0, tilt_angle, 0])
                    cylinder(h = slant_h, r = depth, $fn = 16);
    }
}

module diamond_knurl_band(r_bot, r_top, h, count, angle, depth) {
    avg_r = (r_bot + r_top) / 2;
    circumference = 2 * PI * avg_r;
    arc_travel = h * tan(angle);
    twist_deg = (arc_travel / circumference) * 360;
    slice_count = max(12, ceil(h / 0.35));
    taper_scale = r_top / r_bot;
    for (dir = [-1, 1]) {
        linear_extrude(height = h, twist = dir * twist_deg, scale = taper_scale, slices = slice_count, convexity = 10) {
            for (i = [0 : count - 1]) {
                rotate([0, 0, i * (360 / count)])
                    translate([r_bot, 0])
                        rotate([0, 0, 45])
                            square([depth * sqrt(2), depth * sqrt(2)], center = true);
            }
        }
    }
}

module shaft_bore(h) {
    r = Shaft_Diameter / 2;
    if (Shaft_Type == "D") {
        intersection() {
            cylinder(h = h, r = r);
            translate([-r, -r, 0])
                cube([Shaft_Diameter, D_Flat_Thickness, h]);
        }
    } else {
        cylinder(h = h, r = r);
    }
}

module positioned_knob() {
    if (Auto_Flip_Flat_Top && Inlay_Depth == 0) {
        translate([0, 0, Overall_Height])
            rotate([180, 0, 0])
                encoder_knob();
    } else {
        encoder_knob();
    }
}

if (Show_Cross_Section) {
    cut_box = max(Outside_Diameter, Overall_Height) * 2 + 10;
    difference() {
        positioned_knob();
        rotate([0, 0, Cross_Section_Angle])
            translate([-cut_box / 2, -cut_box, -cut_box / 2])
                cube([cut_box, cut_box, cut_box]);
    }
} else {
    positioned_knob();
}