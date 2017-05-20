# Hellenic Milsim server launch script version 2.0
# This script is launched from the root ArmA 3 directory

# If you're getting problems with execution policy, launch with
# powershell -ExecutionPolicy ByPass -File launch.ps1

# config=...
$configPath = 'basic.server.cfg'

# profiles=...
$profilePath = 'C:\Arma3\A3Master'

# cfg=...
$networkCfgPath = 'network.cfg'

$params = @(
	"-hugePages",
	"-world=empty"
)

$launchHeadless = true

$modPrefix = 'mods\'
$modSuffix = ';'

$mods = @(
	"@cup_terrains_core",
	"@cup_terrains_maps",
	"@chernarus_Winter_A3",
	"@CBA_A3",
	"@Esseker",
	"@tf47_launchers",
	"@acd",
	"@acd_a3_containers_and_decorations_cup",
	"@iam_gurkha",
	"@rhs_afrf3",
	"@rhs_usf3",
	"@RHSSAF",
	"@blx",
	"@hlcmods_core",
	"@hlcmods_g3",
	"@ACE3",
	"@NIArmsG3_ACE",
	"@cup_weapons",
	"@cup_units",
	"@CUP_Vehicles",
	"@rhs_GREF",
	"@werthles_headless_module",
	"@cup_terrains_CWA",
	"@shackTac_User_Interface",
	"@realarmor",
	"@usaf",
	"@NIArmsG3_cup",
	"@strykerpack",
	"@cz75_nochain_a3",
	"@CUP_ACE_Compatibility",
	"@hlc_1903A1",
	"@dac_a3",
	"@hlc_awm",
	"@no_units_tab",
	"@ASR_AI3",
	"@BC_Phoenix",
	"@l_suppress",
	"@jtg_faction",
	"@ares_Mod_Achilles_expansion",
	"@Napf_A3",
	"@task_force_radio",
	"@tryk",
	"@CUP_Vehicles_ACE_compat",
	"@werthlesHeadlessKit",
	"@acex_a3",
	"@Ryanzombies",
	"@HiddenIdentityV2",
	"@TAC_Vests",
	"@KA-TRYK-Revision",
	"@ffaa_a3",
	"@hlcmods_M60E4",
	"@backpackonchest",
	"@FA18_A3",
	"@Project_OPFOR",
	"@advanced_rappelling"
)

$modsParam = "mods='"

foreach ($mod in $mods){
	$modsParam += $modPrefix + $mod + $modSuffix
}

$modsParam += "'"


# Concatenate everything. Leave a space between parameters
#$par = "arma3server_x64.exe"
$par += " config=" + $configPath
$par += " cfg=" + $networkCfgPath
$par += " profiles=" + $profilePath
$par += " "
$par += $params -join " "
#$par += " " + $modsParam

arma3server_x64.exe $par $modsParam

