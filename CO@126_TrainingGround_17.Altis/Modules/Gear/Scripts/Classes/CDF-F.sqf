
_glHE = "CUP_1Rnd_HE_GP25_M";
_glsmokeW = "CUP_1Rnd_SMOKE_GP25_M";
_glsmokeB = "";
_glsmokeG = "CUP_1Rnd_SmokeGreen_GP25_M";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "CUP_1Rnd_SmokeRed_GP25_M";
_glsmokeY = "CUP_1Rnd_SmokeYellow_GP25_M";

_glflareG = "CUP_FlareGreen_GP25_M";
_glflareR = "CUP_FlareRed_GP25_M";


_goggles = "";
_helmet = "CUP_H_CDF_H_PASGT_FST";
_uniform = ["CUP_U_B_CDF_FST_1","CUP_U_B_CDF_FST_2"] call BIS_fnc_selectRandom;
_vest = "CUP_V_CDF_6B3_1_FST";
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_bwmod";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "CUP_H_TK_PilotHelmet";
	_uniform = "CUP_U_B_CDF_FST_2";
	_vest = "CUP_V_CDF_6B3_5_FST";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

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

_rifle = ["CUP_arifle_AK74", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "CUP_30Rnd_545x39_AK_M";
_rifle_mag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";

_rifleGL = ["CUP_arifle_AK74_GL", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "CUP_30Rnd_545x39_AK_M";
_rifleGL_mag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";

_rifleC = ["CUP_arifle_AKS", _silencer, "", "", _bipod];
_rifleC_mag_tr = "CUP_30Rnd_762x39_AK47_M";

_LMG = ["CUP_arifle_RPK74", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_Pecheneg", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

_LAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_LAT_mag = "CUP_PG7VR_M";
_LAT_mag_HE = "CUP_TBG7V_M";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_Metis", _silencer, "", "", _bipod];
_MAT_mag = "CUP_AT13_M";
_MAT_mag_HE = "CUP_AT13_M";

_pistol = ["CUP_hgun_TaurusTracker455", _silencer, "", "", _bipod];
_pistol_mag = "CUP_6Rnd_45ACP_M";

_rifleMarksman = ["CUP_srifle_SVD_des", _silencer, "", "CUP_optic_PSO_3", ""];
_rifleMarksman_mag = "CUP_10Rnd_762x54_SVD_M";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x54_SVD_M";

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
