
_goggles = "";
_helmet = "CUP_H_RACS_Helmet_DES";
_uniform = "CUP_U_I_RACS_Desert_1";
_vest = "CUP_V_B_GER_Carrier_Rig_3_Brown";
_backpack = "B_Kitbag_cbr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155_coyote";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_cbr";
};

if (_role isEqualTo "p") then {
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_uniform = "CUP_U_I_RACS_PilotOverall";
};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_M16A2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_556x45_Stanag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_red";

_rifleGL = ["CUP_arifle_M16A2_GL", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "30Rnd_556x45_Stanag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_red";

_rifleC = ["SMG_05_F", _silencer, "", "", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["CUP_lmg_M249_E2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
_LMG_mag_tr = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";

_MMG = ["CUP_lmg_M240", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["CUP_launch_M72A6", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy_M72A6_CUP";
_LAT_mag_HE = "ACE_PreloadedMissileDummy_M72A6_CUP";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_MAAWS", _silencer, "", "CUP_optic_MAAWS_Scope", _bipod];
_MAT_mag = "CUP_MAAWS_HEAT_M";
_MAT_mag_HE = "CUP_MAAWS_HEDP_M";

_pistol = ["CUP_hgun_Colt1911", _silencer, "", "", _bipod];
_pistol_mag = "CUP_7Rnd_45ACP_1911";

_rifleMarksman = ["CUP_srifle_M24_wdl", _silencer, _pointer, "optic_LRPS_tna_F", "CUP_bipod_Harris_1A2_L"];
_rifleMarksman_mag = "CUP_5Rnd_762x51_M24";
_rifleMarksman_mag_tr = "CUP_5Rnd_762x51_M24";

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
