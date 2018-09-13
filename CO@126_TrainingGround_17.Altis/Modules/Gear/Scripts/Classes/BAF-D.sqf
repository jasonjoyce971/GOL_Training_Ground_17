
_goggles = "";
_helmet = "CUP_H_BAF_Helmet_Net_2_MTP";
_uniform = "CUP_U_B_BAF_MTP_S4_UnRolled";
_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Rifleman";
_backpack = "B_Bergen_mcamo_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_rhs";
};

if (_role in ["fac","sl","ftl","g"]) then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};
if (_role in ["r","rat","mat","amat"]) then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Rifleman";
};
if (_role isEqualTo "crew") then {
	_helmet = "CUP_H_BAF_Crew_Helmet_MTP";
};
if (_role isEqualTo "p") then {
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_vest = "CUP_V_BAF_Osprey_Mk2_DPM_Pilot";
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

_silencer = "CUP_acc_sffh";
_pointer = "CUP_acc_LLM";
_sight = "CUP_optic_ACOG";
//_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_L85A2_G", _silencer, _pointer, _sight, _bipod];
_rifleC = ["SMG_05_F", "", "", "", ""];
_rifleGL = ["CUP_arifle_L85A2_GL", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_556x45_Stanag_red";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
_rifleGL_mag = "30Rnd_556x45_Stanag_red";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["CUP_lmg_L110A1", "", "", _sight, ""];
_LMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1";

_MMG = ["CUP_lmg_L7A2", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["CUP_launch_NLAW", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy_NLAW_CUP";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_Javelin", _silencer, _pointer, "CUP_optic_SMAW_Scope", _bipod];
_MAT_mag = "CUP_Javelin_M";

_pistol = ["CUP_hgun_Glock17_tan", _silencer, "CUP_acc_Glock17_Flashlight", "optic_MRD", _bipod];
_pistol_mag = "CUP_17Rnd_9x19_glock17";

_silencer = "CUP_muzzle_snds_AWM";
_pointer = "";
_sight = "rhsusf_acc_premier";
if ((call EFUNC(Common,isNight)) && _allowedNightStuff) then
{
	_sight = "rhsusf_acc_premier_anpvs27";
};
_bipod = "CUP_bipod_Harris_1A2_L";

_rifleMarksman = ["CUP_srifle_AWM_wdl", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "CUP_5Rnd_86x70_L115A1";
_rifleMarksman_mag_tr = "CUP_5Rnd_86x70_L115A1";

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
