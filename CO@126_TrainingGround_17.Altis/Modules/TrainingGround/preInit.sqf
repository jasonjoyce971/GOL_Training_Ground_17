#include "scriptComponent.hpp"

PREP(actions);
PREP(detectLaptops);
PREP(detectPortFlags);
PREP(resetTraining);

GVAR(Laptops) = [];
GVAR(portPoles) = [];
GVAR(SoloBird);
GVAR(SoloFSM);
GVAR(spawnedAssets) = [];
