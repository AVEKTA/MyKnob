// ==========================================
// MyKnob - Parametric Encoder and Potentiometer Knob Generator with Customizations
// Copyright (c) 2026 AVEKTA
// Licensed under the MIT License (https://opensource.org)
// ==========================================

/* [Main Dimensions] */
// Total knob height from skirt bottom to top face (mm)
Overall_Height        = 12.0;  // [5.0:0.1:40.0]
// Total outer width at the base (mm)
Outside_Diameter      = 15.0;  // [8.0:0.01:50.0]
// Inward taper angle of the outer wall from bottom to top (degrees)
Wall_Taper_Angle      = 0.0;   // [0.0:0.1:10.0]
// Engagement depth of the shaft hole above the recess (mm)
Bore_Depth            = 6.50;  // [1.00:0.01:30.00]
// Wall thickness of the lower shrouding skirt (mm)
Skirt_Thickness       = 2.00;  // [0.50:0.01:15.00]
// How far the shaft bore starts above the skirt bottom (mm)
Skirt_Recess_Depth    = 3.00;  // [0.00:0.01:20.00]
// 45-deg chamfer at top of skirt recess (inside) for clean bridging (mm)
Skirt_Inner_Chamfer   = 0.8;   // [0.0:0.1:5.0]
// Outer diameter at the bottom of the flared skirt (set <= Outside_Diameter to disable)
Skirt_Flare_Diameter  = 15.0;  // [8.0:0.01:60.0]
// Vertical height from the bottom before the flare begins tapering inward (mm)
Skirt_Flare_Start     = 0.00;  // [0.00:0.01:15.00]
// Vertical height from the bottom where the skirt flare finishes blending into the main body (mm)
Skirt_Flare_Height    = 3.00;  // [0.00:0.01:20.00]

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
// Relief style for the top indicator mark
Top_Indicator_Mode    = "RECESSED"; // [RECESSED, RAISED]
// Extend the indicator from the top edge down the side wall until it meets the flare
Indicator_Side_Drop   = false;
// Relief style for the side-drop indicator line
Side_Indicator_Mode   = "RECESSED"; // [RECESSED, RAISED]
// Rotation angle of the indicator relative to the D-shaft flat (degrees)
Indicator_Angle       = 0;     // [-180:1:180]
// Diameter of the indicator dot or width of the notch/side line (mm)
Indicator_Size        = 1.20;  // [0.50:0.01:3.00]
// Depth (recessed) or protrusion height (raised) of the indicator mark (mm)
Indicator_Depth       = 0.60;  // [0.10:0.01:2.00]
// Radial distance of the top indicator's inner edge/center from the knob axis (mm)
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
// Width of knurl grooves at the outer surface (mm)
Knurl_Width           = 0.60;  // [0.10:0.01:3.00]
// Smooth band above knurling before top bevel (mm)
Knurl_Top_Margin      = 1.20;  // [0.00:0.01:10.00]
// Smooth band at bottom edge of skirt (mm)
Knurl_Bottom_Margin   = 0.80;  // [0.00:0.01:10.00]
// Round off the top and bottom ends of vertical knurl grooves into a U-shape
Knurl_Round_Ends      = false;
// Top outer edge profile style
Top_Edge_Style        = "CHAMFER"; // [CHAMFER, FILLET]
// Top outer edge bevel/fillet height (mm)
Top_Chamfer           = 0.8;   // [0.0:0.1:5.0]
// Top chamfer angle from vertical, or fillet radial stretch ratio (degrees; 45 = circular 1:1 fillet)
Top_Chamfer_Angle     = 45;    // [15:1:75]
// Conic shape when Top Edge Style is FILLET (0.50 = circular roundover, 1.00 = straight chamfer)
Top_Fillet_Conic      = 0.50;  // [0.25:0.01:1.00]
// Bottom outer skirt edge bevel height (mm)
Bottom_Chamfer        = 0.4;   // [0.0:0.1:5.0]
// Bottom chamfer angle from vertical (degrees; 45 = standard 1:1 bevel)
Bottom_Chamfer_Angle  = 45;    // [15:1:75]


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

function outer_r_at_z(z) =
    let(
        base_r    = Outside_Diameter / 2,
        flare_r   = max(base_r, Skirt_Flare_Diameter / 2),
        has_flare = (flare_r > base_r && Skirt_Flare_Height > 0),
        f_start   = has_flare ? min(Skirt_Flare_Start, Skirt_Flare_Height) : 0,
        f_end     = has_flare ? Skirt_Flare_Height : 0,
        r_f_end   = base_r - f_end * tan(Wall_Taper_Angle)
    )
    (z <= f_start && has_flare)
        ? flare_r
        : (z < f_end && has_flare)
            ? flare_r - ((z - f_start) / (f_end - f_start)) * (flare_r - r_f_end)
            : base_r - z * tan(Wall_Taper_Angle);

module encoder_knob() {
    base_outer_r  = Outside_Diameter / 2;
    flare_outer_r = max(base_outer_r, Skirt_Flare_Diameter / 2);
    has_flare     = (flare_outer_r > base_outer_r && Skirt_Flare_Height > 0);

    eff_flare_h     = has_flare ? min(Skirt_Flare_Height, Overall_Height - Top_Chamfer - 0.5) : 0;
    eff_flare_start = has_flare ? min(Skirt_Flare_Start, eff_flare_h) : 0;

    shaft_r       = Shaft_Diameter / 2;
    inlay_r       = Inlay_Diameter / 2;
    // Keep skirt_inner_r bounded by base_outer_r so the counterbore never punches through the neck
    skirt_inner_r = max(shaft_r + 0.2, base_outer_r - Skirt_Thickness);

    eff_bot_chamfer = min(Bottom_Chamfer, max(0, (flare_outer_r - skirt_inner_r - 0.2) / tan(Bottom_Chamfer_Angle)), Overall_Height - Top_Chamfer - 0.5);
    eff_top_chamfer = min(Top_Chamfer, Overall_Height - eff_bot_chamfer - 0.5);

    bot_ch_radial = eff_bot_chamfer * tan(Bottom_Chamfer_Angle);
    top_ch_radial = eff_top_chamfer * tan(Top_Chamfer_Angle);

    r_z_bot_ch = outer_r_at_z(eff_bot_chamfer);
    r_z_top_ch = outer_r_at_z(Overall_Height - eff_top_chamfer);
    r_z_top    = outer_r_at_z(Overall_Height);

    difference() {
        // 1. Solid Main Outer Body with Straight Flare Base, Tapered Flare & Custom Chamfer Angles
        union() {
            // Bottom chamfered ring
            if (eff_bot_chamfer > 0) {
                cylinder(h = eff_bot_chamfer, r1 = r_z_bot_ch - bot_ch_radial, r2 = r_z_bot_ch);
            }
            // Straight cylindrical section of the flared skirt (above bottom chamfer, below flare taper)
            if (eff_flare_start > eff_bot_chamfer) {
                translate([0, 0, eff_bot_chamfer])
                    cylinder(h = eff_flare_start - eff_bot_chamfer, r = flare_outer_r);
            }
            // Conical flare transition section
            flare_cone_start = max(eff_bot_chamfer, eff_flare_start);
            if (eff_flare_h > flare_cone_start) {
                translate([0, 0, flare_cone_start])
                    cylinder(
                        h = eff_flare_h - flare_cone_start,
                        r1 = outer_r_at_z(flare_cone_start),
                        r2 = outer_r_at_z(eff_flare_h)
                    );
            }
            // Main upper body section
            body_start_z = max(eff_bot_chamfer, eff_flare_h);
            body_end_z   = Overall_Height - eff_top_chamfer;
            if (body_end_z > body_start_z) {
                translate([0, 0, body_start_z])
                    cylinder(
                        h = body_end_z - body_start_z,
                        r1 = outer_r_at_z(body_start_z),
                        r2 = r_z_top_ch
                    );
            }
            // Top chamfered or conic-filleted ring
            if (eff_top_chamfer > 0) {
                translate([0, 0, Overall_Height - eff_top_chamfer]) {
                    if (Top_Edge_Style == "FILLET") {
                        exp_p = 2 * Top_Fillet_Conic;
                        rotate_extrude(convexity = 4)
                            polygon(concat(
                                [[0,0], [r_z_top_ch, 0]],
                                [for (i = [1 : 20])
                                    let(a = i * 90 / 20)
                                    [
                                        (r_z_top_ch - top_ch_radial) + top_ch_radial * pow(cos(a), exp_p),
                                        eff_top_chamfer * pow(sin(a), exp_p)
                                    ]
                                ],
                                [[0, eff_top_chamfer]]
                            ));
                    } else {
                        cylinder(h = eff_top_chamfer, r1 = r_z_top_ch, r2 = r_z_top - top_ch_radial);
                    }
                }
            }
        }
        
        // 2. Outer Grip Knurling (Conforms to Wall Taper)
        if (Knurl_Style != "NONE" && Knurl_Count > 0 && Knurl_Depth > 0) {
            knurl_start_z = max(eff_flare_h, Knurl_Bottom_Margin);
            knurl_end_z   = Overall_Height - Knurl_Top_Margin;
            knurl_h       = knurl_end_z - knurl_start_z;
            if (knurl_h > 0.5) {
                r_knurl_bot = outer_r_at_z(knurl_start_z);
                r_knurl_top = outer_r_at_z(knurl_end_z);
                difference() {
                    translate([0, 0, knurl_start_z]) {
                        if (Knurl_Style == "DIAMOND" && Knurl_Angle > 0) {
                            diamond_knurl_band(
                                r_bot = r_knurl_bot,
                                r_top = r_knurl_top,
                                h = knurl_h,
                                count = Knurl_Count,
                                angle = Knurl_Angle,
                                depth = Knurl_Depth,
                                width = Knurl_Width
                            );
                        } else if (Knurl_Style == "VERTICAL") {
                            vertical_knurl_band(
                                r_bot = r_knurl_bot,
                                r_top = r_knurl_top,
                                h = knurl_h,
                                count = Knurl_Count,
                                depth = Knurl_Depth,
                                width = Knurl_Width,
                                round_bot = (Knurl_Round_Ends && Knurl_Bottom_Margin > 0),
                                round_top = (Knurl_Round_Ends && Knurl_Top_Margin > 0)
                            );
                        }
                    }

                    // Keep a smooth un-knurled pad behind the raised side-drop indicator
                    if (Indicator_Side_Drop && Side_Indicator_Mode == "RAISED" && Indicator_Size > 0) {
                        clear_w = Indicator_Size + 0.8;
                        max_r   = max(r_knurl_bot, r_knurl_top) + Knurl_Depth + 2;
                        rotate([0, 0, Indicator_Angle])
                            translate([-clear_w / 2, 0, knurl_start_z - 1])
                                cube([clear_w, max_r, knurl_h + 2]);
                    }
                }
            }
        }

        // 3. Recessed Top Inlay Pocket + Inner Lip Chamfer
        max_inlay_r = r_z_top - top_ch_radial - 0.1;
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

        // 5. Optional Recessed Top & Side Indicator
        if ((Top_Indicator != "NONE" || Indicator_Side_Drop) && Indicator_Size > 0 && Indicator_Depth > 0) {
            side_bot_z = max(eff_flare_h, eff_bot_chamfer);
            r_side_bot = outer_r_at_z(side_bot_z);
            rotate([0, 0, Indicator_Angle]) {
                // Recessed top mark
                if (Top_Indicator_Mode == "RECESSED") {
                    if (Top_Indicator == "DOT") {
                        translate([0, Indicator_Offset, Overall_Height - Indicator_Depth])
                            cylinder(h = Indicator_Depth + 0.05, r = Indicator_Size / 2, $fn = 32);
                    } else if (Top_Indicator == "NOTCH") {
                        notch_len = max(0.5, (r_z_top + 0.5) - Indicator_Offset);
                        translate([-Indicator_Size / 2, Indicator_Offset, Overall_Height - Indicator_Depth])
                            cube([Indicator_Size, notch_len, Indicator_Depth + 0.05]);
                    }
                }

                // Recessed side-drop channel down the tapered side wall to the flare
                if (Indicator_Side_Drop && Side_Indicator_Mode == "RECESSED" && Overall_Height > side_bot_z + 0.2) {
                    hull() {
                        translate([-Indicator_Size / 2, r_z_top - Indicator_Depth, Overall_Height - Indicator_Depth])
                            cube([Indicator_Size, Indicator_Depth + 0.5, Indicator_Depth + 0.05]);
                        translate([-Indicator_Size / 2, r_side_bot - Indicator_Depth, side_bot_z])
                            cube([Indicator_Size, Indicator_Depth + 0.5, 0.2]);
                    }
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

    // 11. Optional Raised Top & Side Indicator (Independent Relief Modes)
    if ((Top_Indicator != "NONE" || Indicator_Side_Drop) && Indicator_Size > 0 && Indicator_Depth > 0) {
        side_bot_z  = max(eff_flare_h, eff_bot_chamfer);
        r_side_bot  = outer_r_at_z(side_bot_z);
        top_ch_z    = Overall_Height - eff_top_chamfer;
        top_flat_r  = r_z_top_ch - top_ch_radial;
        embed_z     = max(eff_bot_chamfer, side_bot_z - 0.6);
        back_embed  = max(0.35, Knurl_Depth + 0.15);

        // Meet raised top notch height at top edge; otherwise taper flush to Overall_Height
        top_join_h  = (Top_Indicator == "NOTCH" && Top_Indicator_Mode == "RAISED") ? Indicator_Depth : 0;

        rotate([0, 0, Indicator_Angle]) {
            // Segment 1 - Raised top mark
            if (Top_Indicator_Mode == "RAISED") {
                if (Top_Indicator == "DOT") {
                    translate([0, Indicator_Offset, Overall_Height - 0.15])
                        cylinder(h = Indicator_Depth + 0.15, r = Indicator_Size / 2, $fn = 32);
                } else if (Top_Indicator == "NOTCH") {
                    if (top_flat_r > Indicator_Offset) {
                        translate([-Indicator_Size / 2, Indicator_Offset, Overall_Height - 0.2])
                            cube([Indicator_Size, top_flat_r - Indicator_Offset + 0.05, Indicator_Depth + 0.2]);
                    }
                }
            }

            // Segment 2 - Raised side-drop ridge
            if (Indicator_Side_Drop && Side_Indicator_Mode == "RAISED") {
                // Transition over the top chamfer/fillet
                if (eff_top_chamfer > 0) {
                    if (Top_Edge_Style == "FILLET") {
                        exp_p = 2 * Top_Fillet_Conic;
                        for (s = [0 : 19]) {
                            t1 = s / 20;
                            t2 = (s + 1) / 20;
                            a1 = t1 * 90;
                            a2 = t2 * 90;
                            r1 = top_flat_r + top_ch_radial * pow(cos(a1), exp_p);
                            z1 = top_ch_z + eff_top_chamfer * pow(sin(a1), exp_p);
                            r2 = top_flat_r + top_ch_radial * pow(cos(a2), exp_p);
                            z2 = top_ch_z + eff_top_chamfer * pow(sin(a2), exp_p);
                            h1 = Indicator_Depth * (1 - t1) + top_join_h * t1;
                            h2 = Indicator_Depth * (1 - t2) + top_join_h * t2;
                            hull() {
                                translate([-Indicator_Size / 2, r1 - back_embed, z1 - back_embed])
                                    cube([Indicator_Size, back_embed + h1 * cos(a1), back_embed + h1 * sin(a1)]);
                                translate([-Indicator_Size / 2, r2 - back_embed, z2 - back_embed])
                                    cube([Indicator_Size, back_embed + h2 * cos(a2), back_embed + h2 * sin(a2)]);
                            }
                        }
                    } else {
                        hull() {
                            translate([-Indicator_Size / 2, top_flat_r - back_embed, Overall_Height - back_embed])
                                cube([Indicator_Size, back_embed + 0.05, back_embed + top_join_h]);
                            translate([-Indicator_Size / 2, r_z_top_ch - back_embed, top_ch_z - 0.1])
                                cube([Indicator_Size, back_embed + Indicator_Depth, 0.1]);
                        }
                    }
                }

                // Segments 3 & 4 - Side wall ridge (starts flush at top_ch_z and extends downward so it never pokes above the fillet)
                if (top_ch_z > side_bot_z + 0.1) {
                    hull() {
                        translate([-Indicator_Size / 2, r_z_top_ch - back_embed, top_ch_z - 0.15])
                            cube([Indicator_Size, Indicator_Depth + back_embed, 0.15]);
                        translate([-Indicator_Size / 2, r_side_bot - back_embed, side_bot_z])
                            cube([Indicator_Size, Indicator_Depth + back_embed, 0.15]);
                    }
                    if (eff_flare_h > eff_flare_start) {
                        hull() {
                            translate([-Indicator_Size / 2, r_side_bot - back_embed, side_bot_z])
                                cube([Indicator_Size, Indicator_Depth + back_embed, 0.15]);
                            translate([-Indicator_Size / 2, outer_r_at_z(embed_z) - back_embed, embed_z])
                                cube([Indicator_Size, back_embed + 0.05, 0.15]);
                        }
                    }
                }
            }
        }
    }
}

module vertical_knurl_band(r_bot, r_top, h, count, depth, width, round_bot = false, round_top = false) {
    tilt_angle = atan2(r_top - r_bot, h);
    slant_h    = sqrt(h * h + (r_top - r_bot) * (r_top - r_bot));
    cap_r      = width / 2;

    bot_trim   = round_bot ? min(cap_r, slant_h * 0.45) : 0;
    top_trim   = round_top ? min(cap_r, slant_h * 0.45) : 0;
    cyl_h      = max(0.05, slant_h - bot_trim - top_trim);

    for (i = [0 : count - 1]) {
        rotate([0, 0, i * (360 / count)])
            translate([r_bot, 0, 0])
                rotate([0, tilt_angle, 0]) {
                    // Main straight flute section
                    translate([0, 0, bot_trim])
                        linear_extrude(height = cyl_h)
                            scale([depth, cap_r])
                                circle(r = 1, $fn = 20);

                    // Rounded U-shaped bottom end
                    if (round_bot) {
                        translate([0, 0, bot_trim])
                            scale([depth, cap_r, bot_trim])
                                sphere(r = 1, $fn = 20);
                    }

                    // Rounded U-shaped top end
                    if (round_top) {
                        translate([0, 0, slant_h - top_trim])
                            scale([depth, cap_r, top_trim])
                                sphere(r = 1, $fn = 20);
                    }
                }
    }
}

module diamond_knurl_band(r_bot, r_top, h, count, angle, depth, width) {
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
                        polygon([
                            [-depth, 0],
                            [0, width / 2],
                            [depth, 0],
                            [0, -width / 2]
                        ]);
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
