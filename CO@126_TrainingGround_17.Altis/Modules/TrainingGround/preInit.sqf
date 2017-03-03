#include "scriptComponent.hpp"

PREP(actions);
PREP(detectLaptops);
PREP(detectPortFlags);
PREP(resetTraining);
PREP(spawnBadGuys);

GVAR(Laptops) = [];
GVAR(portPoles) = [];
GVAR(SoloBird);
GVAR(SoloFSM);
GVAR(spawnedAssets) = [];
GVAR(AACFSM);
GVAR(spawnedOPFOR) = [];
