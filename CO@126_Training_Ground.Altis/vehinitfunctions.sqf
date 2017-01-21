TAG_FNC_TankInit = {

// -- Example code. You can work with the vehicle anyway you like here!! -- //
_veh = _this select 0;
_veh disableTIEquipment true;

};

TAG_FNC_HunterInit = {

// -- Example code. You can work with the vehicle anyway you like here!! -- //
_veh = _this select 0;
_veh setFuel 1;

};

TAG_FNC_HunterHMGInit = {

_veh = _this select 0;
_veh setVehicleAmmo 1;

};

TAG_FNC_HunterGMGInit = {

_veh = _this select 0;
_veh setVehicleAmmo 1;

};

TAG_FNC_slammerInit = {

_veh = _this select 0;
_veh setVehicleAmmo 1;

};

TAG_FNC_marshallInit = {

_veh = _this select 0;
_veh setVehicleAmmo 1;

};

TAG_FNC_TrainingHeli = {

_veh = _this select 0;
_veh addAction ["Mobile HQ","Hint 'This is Mobile HQ#6'"]; 

};

// -- ADD MORE FUNCTIONS HERE!! -- //