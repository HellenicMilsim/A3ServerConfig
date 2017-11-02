REM WW2 modset
REM Added for 3 Nov event
REM Use this syntax from now on, for both dedi and hc

SET modlist=-mod=mods\@CBA_A3; ^
-mod=mods\@ace3; ^
-mod=mods\@acd; ^
-mod=mods\@acd_a3_containers_and_decorations_cup; ^
-mod=mods\@acex_a3; ^
-mod=mods\@advanced_rappelling; ^
-mod=mods\@ares_mod_achilles_expansion; ^
-mod=mods\@ASR_AI3; ^
-mod=mods\@backpackonchest; ^
-mod=mods\@bc_phoenix; ^
-mod=mods\@cup_terrains_core; ^
-mod=mods\@cup_terrains_cwa; ^
-mod=mods\@cup_terrains_maps; ^
-mod=mods\@cz75_nochain_a3; ^
-mod=mods\@ffaa_a3; ^
-mod=mods\@hiddenidentityv2; ^
-mod=mods\@jtg_factions; ^
-mod=mods\@ka-tryk-revision; ^
-mod=mods\@no_units_tab; ^
-mod=mods\@project_opfor; ^
-mod=mods\@realarmor; ^
-mod=mods\@rhs_afrf3; ^
-mod=mods\@rhs_gref; ^
-mod=mods\@rhs_usf3; ^
-mod=mods\@rhssaf; ^
-mod=mods\@shacktac_user_interface; ^
-mod=mods\@skippy_roster; ^
-mod=mods\@tac_vests; ^
-mod=mods\@task_force_radio; ^
-mod=mods\@tryk; ^
-mod=mods\@usaf; ^
-mod=mods\@werthles_headless_module; ^
-mod=mods\@werthlesheadlesskit; ^
-mod=mods\@tfw_radios; ^
-mod=mods\@EM; ^
-mod=mods\@ASDG_JR; ^
-mod=mods\@NIArsenal; ^
-mod=mods\@PreiKhmaochLuong; ^
-mod=mods\@fow; ^
-mod=mods\@i44_terrains; ^
-mod=mods\@ifa3_ace3_compatibility; ^
-mod=mods\@ifa3_terrains_lite; ^
-mod=mods\@ifa3lite; ^
-mod=mods\@ww2_objects; ^
-mod=mods\@Immersion Cigs;


start "A3 Server" arma3server_x64.exe ^
-hugePages ^
-profiles=C:\Arma3\A3Master ^
-config=basicww2.server.cfg ^
-cfg=network.cfg ^
-world=empty ^
%modlist%

start "A3 Headless" arma3server_x64.exe ^
-hugePages ^
-client ^
-connect=127.0.0.1 ^
-password=555 ^
%modlist%
