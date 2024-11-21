$modelname "gfreakman/gordonf_highpoly.mdl"

$model "gordon" "Gordon_Highpoly.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.1807 -3.75931 66.6178 "eyeball_r" 1 4 "iris_unused" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.1807 -3.75931 66.6178 "eyeball_l" 1 -4 "iris_unused" 0.63

	eyelid upper_right "Gordon_Highpoly.vta" lowerer 1 -0.15 neutral 0 0.19 raiser 2 0.3 split 1 eyeball "eye_right"
	eyelid lower_right "Gordon_Highpoly.vta" lowerer 3 -0.31 neutral 0 -0.19 raiser 4 0 split 1 eyeball "eye_right"
	eyelid upper_left "Gordon_Highpoly.vta" lowerer 1 -0.15 neutral 0 0.19 raiser 2 0.3 split -1 eyeball "eye_left"
	eyelid lower_left "Gordon_Highpoly.vta" lowerer 3 -0.31 neutral 0 -0.19 raiser 4 0 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "Gordon_Highpoly.vta" 
	{
				$include "../Humans/standardflex_v2.qci"
	}

	$include "../Humans/facerules_v2.qci"
	$include "../Humans/bodyrules_xsi.qci"
}

$bodygroup "HEV"
{
	studio "HEV_2004.smd"
	studio "HEV_2003.smd"
}	

$bodygroup "Ponytail"
{
	blank
	studio "Gordon_Ponytail.smd"
}

$bodygroup "Glasses"
{
	studio "Gordon_Glasses_Highpoly.smd"
	studio "Gordon_Glasses_XSI.smd"
	blank
}
/*
$bodygroup "Haircards"
{
	blank
	//studio "Gordon_Haircards.smd"
}
*/
$surfaceprop "flesh"

$contents "solid"

$illumposition -0.478 -0.001 35.329

$eyeposition 0 0 70
$cdmaterials "models\gfreakman\gordon\hq\"
$cdmaterials "models\gfreakman\gordon\"
$cdmaterials "models\kleiner\"
$cdmaterials "models\Humans\Male\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.34 -2.5 0 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -5.7 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -80 -90
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -26.363 -7.997 -2.689 26.364 7.035 73.338

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7
$skipboneinbbox

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque
$include "../Humans/standardhierarchy.qci"
$include "../Humans/standardikchains.qci"
$alwayscollapse "Male_01"
$alwayscollapse "XSISceneRoot"
$proceduralbones "../../male.vrd"
$include "../Humans/Male/commonbones.qci"
$unlockdefinebones

$includemodel "m_anm.mdl"
$includemodel "humans/male_shared.mdl"
$includemodel "humans/male_ss.mdl"
$includemodel "humans/male_gestures.mdl"
$includemodel "humans/male_postures.mdl"

$collisionjoints ragdoll {

	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"
	$animatedfriction 1 400 0.5 0.0 0.3

	$jointmerge "valvebiped.bip01_pelvis" "valvebiped.bip01"
	$jointmerge "valvebiped.bip01_pelvis" "valvebiped.bip01_spine1"

	$jointconstrain "valvebiped.bip01_spine2" x limit -48.00 48.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -25.00 50.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -79.00 95.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 23.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -95.00 84.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -86.00 26.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -57.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -57.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 75.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -97.00 32.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -13.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -73.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -93.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00

	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_Pelvis"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_Pelvis"
	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_spine2"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_spine2"
	$jointcollide "valvebiped.bip01_r_thigh" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_r_calf" "valvebiped.bip01_l_calf"
	$jointcollide "valvebiped.bip01_l_foot" "valvebiped.bip01_r_foot"
	$jointcollide "valvebiped.bip01_l_foot" "valvebiped.bip01_r_calf"
	$jointcollide "valvebiped.bip01_r_foot" "valvebiped.bip01_l_calf"

	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_r_thigh"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_r_thigh"
}
$sequence ragdoll 		"ragdoll_pose" 		FPS 30 		activity ACT_DIERAGDOLL 1
