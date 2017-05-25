# Hellenic Milsim server launch script version 2.0
# This script is launched from the root ArmA 3 directory

# If you're getting problems with execution policy, launch with
# powershell -ExecutionPolicy ByPass -File launch.ps1

# Special modset:
# Joint co-op event

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
	"@rhs_afrf3",
	"@rhs_gref",
	"@rhs_usf3",
	"@shacktac_user_interface",
	"@ace3",
	"@cba_a3",
	"@cup_ace_compatibility",
	"@cup_terrains_core",
	"@cup_terrains_maps",
	"@rhssaf",
	"@task_force_radio",
	"@project_opfor"
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
