
$modelname gfreakman\bonus\gordon_xsi.mdl

$cdmaterials models\gfreakman\gordon_xsi

//start eye/face data
$eyeposition 0 0 70

$model breen "Gordon_XSI.smd"

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

$includemodel humans/male_shared.mdl

$include "../Humans/standardhierarchy.qci"
$include "../humans/standardikchains.qci"
$include "../humans/male/commonbones.qci"

$pushd "../Humans/Male"
$include "../Humans/Male/ragdoll.qci"
$include "../Humans/Male/hitbox.qci"
$popd

