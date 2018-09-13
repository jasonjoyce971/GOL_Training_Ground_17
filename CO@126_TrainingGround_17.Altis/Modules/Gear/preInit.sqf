#include "scriptComponent.hpp"

PREP(actions);
PREP(getAttachments);
PREP(getLoadoutClass);
PREP(Handler);
PREP(Init);
PREP(replaceAttachments);

GVAR(Enabled_101) = true;
GVAR(Enabled_201) = true;
GVAR(Enabled_301) = true;
GVAR(Enabled_302) = true;

GVAR(Index101) = 0;
GVAR(Index201) = 0;
GVAR(Index301) = 0;
GVAR(Index302) = 0;
GVAR(Stamina) = true;
GVAR(StaminaCoef) = 0.5;

[
	QGVAR(Blufor), "LIST",
	["Loadout Blufor", "Loadout for Blufor units"],
	QUOTE(ADDON),
	[
		[
			"NATO-D",
			"NATO-W",
			"NATO-CTRG",
			"BAF-D",
			"BAF-W",
			"USMC-D",
			"USMC-W",
			"MARSOC",
			"USARMY",
			"CDF-F",
			"INSURGENT-D",
			"INSURGENT-W",
			"CUSTOM-W"
		],
		[
			"NATO-Desert",
			"NATO-Woodland",
			"NATO-CTRG",
			"BAF-Desert",
			"BAF-Woodland",
			"USMC-Desert",
			"USMC-Woodland",
			"MARSOC Raiders",
			"US Army",
			"Chernarussian Defence Force",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"CUSTOM-West"
		],
		0
	], CBA_SERVEROVERWRITE
] call FUNCMAIN(settingsInit);

[
	QGVAR(Opfor),
	"LIST", ["Loadout Opfor", "Loadout for Opfor units"],
	QUOTE(ADDON),
	[
		[
			"CSAT-H",
			"CSAT-W",
			"CSAT-U",
			"CSAT-V",
			"RUSSIAN-W",
			"SPETSNAZ",
			"TAKIARMY-D",
			"SLA",
			"INSURGENT-D",
			"INSURGENT-W",
			"CUSTOM-E"
		],
		[
			"CSAT-Hex",
			"CSAT-Woodland",
			"CSAT-Urban",
			"CSAT-Vyper Team",
			"Russian-Woodland",
			"Spetsnaz",
			"Takistani Army-Desert",
			"Sahrani Liberation Army",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"CUSTOM-East"
		],
		0
	]
	, CBA_SERVEROVERWRITE
] call FUNCMAIN(settingsInit);

[
	QGVAR(Independent),
	"LIST", ["Loadout Independent", "Loadout for Independent units"],
	QUOTE(ADDON),
	[
		[
			"AAF-W",
			"PMC",
			"RACS-MTP",
			"SYND",
			"INSURGENT-D",
			"INSURGENT-W",
			"CUSTOM-I"
		],
		[
			"AAF-Woodland",
			"PMC",
			"Royal Army Corps Sahrani",
			"Syndikat",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"CUSTOM-Independent"
		],
		0
	],CBA_SERVEROVERWRITE
] call FUNCMAIN(settingsInit);

[
	QGVAR(Civilian),
	"LIST", ["Loadout Civilian", "Loadout for Civilian units"],
	QUOTE(ADDON),
	[
		[
			"CIVI-ALTIS",
			"CIVI-CHERNARUS",
			"CIVI-TAKISTAN"
		],
		[
			"ALTIS",
			"CHERNARUS",
			"TAKISTAN"
		],
		0
	], CBA_SERVEROVERWRITE
] call FUNCMAIN(settingsInit);

[
	QGVAR(Auto_Assign), "LIST",
	["Auto assign gear", "automaticly gives gear to spawned units"],
	QUOTE(ADDON),
	[
		[0,1,2,3],
		["Disabled","All Units","Only SpawnList","Ignore Editor Placed"],
		1
	], CBA_SERVEROVERWRITE
] call FUNCMAIN(settingsInit);

[QGVAR(randomGear), "CHECKBOX", ["Random Role", "Should units get random gear"], QUOTE(ADDON), true, CBA_SERVEROVERWRITE] call FUNCMAIN(settingsInit);
[QGVAR(extraGear), "CHECKBOX", ["Gives units extra loadout", "Medics gets more supplies, AT gets more rockets etc"], QUOTE(ADDON), true, CBA_SERVEROVERWRITE] call FUNCMAIN(settingsInit);
[QGVAR(autoRemoveCargo), "CHECKBOX", ["Removes cargo for vehicles", "Automaticly removes cargo"], QUOTE(ADDON), true, CBA_SERVEROVERWRITE] call FUNCMAIN(settingsInit);
