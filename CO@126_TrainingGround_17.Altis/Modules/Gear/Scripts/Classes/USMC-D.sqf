
_goggles = "";
_helmet = "rhsusf_lwh_helmet_marpatd_headset";
_uniform = "rhs_uniform_FROG01_d";
_vest = "rhsusf_spc_iar";
_backpack = "rhsusf_assault_eagleaiii_ocp";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_rhs";
};

if (_role in ["ag","ammg"]) then {
	_vest = "rhsusf_spc_corpsman";
	_backpack = "B_Carryall_cbr";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
};
if (_role isEqualTo "crew") then {
	_helmet = "rhsusf_cvc_green_helmet";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "p") then {
	_helmet = "rhsusf_hgu56p_visor_green";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "marksman") then {
	_vest = "rhsusf_spc_marksman";
};

if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
//_sight = "";
_sight = "rhsusf_acc_ACOG_RMR";
_bipod = "";

_rifle = ["rhs_weap_m27iar_grip", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4_mstock", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_m320", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleC_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_rifleGL_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

//_LMG = ["rhs_weap_m27iar", _silencer, _pointer, _sight, "bipod_01_F_blk"];
//_LMG_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249_pip", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_200rnd_556x45_M_SAW";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m993";

_LAT = ["rhs_weap_M136", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m136_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_smaw_green", _silencer, _pointer, "rhs_weap_optic_smaw", _bipod];
_MAT_mag = "rhs_mag_smaw_HEAA";
_MAT_mag_HE = "rhs_mag_smaw_HEDP";
_smawSpottingRounds = "rhs_mag_smaw_SR";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_JHP";

_silencer = "";
_pointer = "";
_sight = "rhsusf_acc_premier";
if ((call EFUNC(Common,isNight)) && _allowedNightStuff) then
{
	_sight = "rhsusf_acc_premier_anpvs27";
};
_bipod = "rhsusf_acc_harris_swivel";

_rifleMarksman = ["rhs_weap_m40a5_d", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "rhsusf_10Rnd_762x51_m118_special_Mag";
_rifleMarksman_mag_tr = "rhsusf_10Rnd_762x51_m118_special_Mag";

if (_role isEqualTo "diver") then {
	_backpack = "B_ViperHarness_blk_F";
	_goggles = "G_B_Diving";
	_helmet = "";
	_vest = "V_RebreatherB";
	_uniform = "U_B_Wetsuit";
	_rifle = ["arifle_SDAR_F", "", "", "", ""];
	_rifle_mag = "20Rnd_556x45_UW_mag";
	_rifle_mag_tr = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
};
