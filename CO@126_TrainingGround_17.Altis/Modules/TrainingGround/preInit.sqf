#include "scriptComponent.hpp"

PREP(actions);
PREP(detectLaptops);
PREP(detectPortFlags);
PREP(resetTraining);
PREP(spawnBadGuys);
PREP(spawnCasualty);
PREP(focusOnObject);
PREP(firingRange);
PREP(spawnObjects);
PREP(handlerange);
PREP(handlepistoldraw);
PREP(fobcluster);
PREP(fobalmyra);
PREP(fobeternity);
PREP(handlevehicles);
PREP(handlevr);
PREP(handlevrv2);
PREP(doorCloser);

GVAR(Laptops) = [];
GVAR(portPoles) = [];
GVAR(SoloBird);
GVAR(SoloFSM);
GVAR(spawnedAssets) = [];
GVAR(AACFSM);
GVAR(spawnedOPFOR) = [];
GVAR(airTargets) = ["airtgt","airtgt_1","airtgt_2","airtgt_3","airtgt_4","airtgt_5","airtgt_6","airtgt_7","airtgt_8","airtgt_9","airtgt_10",
					"airtgt_11","airtgt_12","airtgt_13","airtgt_14","airtgt_15","airtgt_16","airtgt_17","airtgt_18","airtgt_19","airtgt_20",
					"airtgt_21","airtgt_22","airtgt_23","airtgt_24","airtgt_25","airtgt_26","airtgt_27","airtgt_28","airtgt_29","airtgt_30",
					"airtgt_31","airtgt_32","airtgt_33","airtgt_34","airtgt_35","airtgt_36","airtgt_37","airtgt_38","airtgt_39","airtgt_40",
					"airtgt_41","airtgt_42","airtgt_43","airtgt_44","airtgt_45","airtgt_46","airtgt_47","airtgt_48","airtgt_49","airtgt_50",
					"airtgt_51","airtgt_52","airtgt_53","airtgt_54","airtgt_55","airtgt_56","airtgt_57","airtgt_58","airtgt_59","airtgt_60",
					"airtgt_61","airtgt_62","airtgt_63","airtgt_64","airtgt_65","airtgt_66","airtgt_67","airtgt_68","airtgt_69","airtgt_70",
					"airtgt_71","airtgt_72","airtgt_73","airtgt_74","airtgt_75","airtgt_76","airtgt_77","airtgt_78","airtgt_79","airtgt_80",
					"airtgt_81","airtgt_82","airtgt_83","airtgt_84","airtgt_85","airtgt_86","airtgt_87","airtgt_88","airtgt_89","airtgt_90",
					"airtgt_91","airtgt_92","airtgt_93","airtgt_94","airtgt_95","airtgt_96","airtgt_97","airtgt_98","airtgt_99","airtgt_100",
					"airtgt_101","airtgt_102","airtgt_103","airtgt_104","airtgt_105","airtgt_106","airtgt_107","airtgt_108","airtgt_109","airtgt_110",
					"airtgt_111","airtgt_112","airtgt_113","airtgt_114","airtgt_115","airtgt_116","airtgt_117","airtgt_118","airtgt_119","airtgt_120",
					"airtgt_121","airtgt_122","airtgt_123","airtgt_124","airtgt_125","airtgt_126","airtgt_127","airtgt_128","airtgt_129","airtgt_130",
					"airtgt_131","airtgt_132","airtgt_133","airtgt_134","airtgt_135","airtgt_136","airtgt_137","airtgt_138","airtgt_139","airtgt_140",
					"airtgt_141","airtgt_142","airtgt_143","airtgt_144","airtgt_145","airtgt_146","airtgt_147","airtgt_148","airtgt_149","airtgt_150",
					"airtgt_151","airtgt_152","airtgt_153","airtgt_154","airtgt_155","airtgt_156","airtgt_157","airtgt_158","airtgt_159","airtgt_160",
					"airtgt_161"];
GVAR(vehTargets) = ["vehtgt","vehtgt_1","vehtgt_2","vehtgt_3","vehtgt_4","vehtgt_5","vehtgt_6","vehtgt_7","vehtgt_8","vehtgt_9","vehtgt_10",
					"vehtgt_11","vehtgt_12","vehtgt_13","vehtgt_14","vehtgt_15","vehtgt_16","vehtgt_17","vehtgt_18","vehtgt_19","vehtgt_20",
					"vehtgt_21","vehtgt_22","vehtgt_23","vehtgt_24","vehtgt_25","vehtgt_26","vehtgt_27","vehtgt_28"];
GVAR(morTargets) = ["mortgt","mortgt_1","mortgt_2","mortgt_3","mortgt_4","mortgt_5","mortgt_6","mortgt_7","mortgt_8","mortgt_9","mortgt_10",
					"mortgt_11","mortgt_12","mortgt_13","mortgt_14","mortgt_15","mortgt_16","mortgt_17","mortgt_18","mortgt_19","mortgt_20"];
GVAR(atTargets) = ["attgt","attgt_1","attgt_2","attgt_3","attgt_4","attgt_5","attgt_6","attgt_7","attgt_8","attgt_9","attgt_10"];
GVAR(FiringRangeCANCEL) = false;
GVAR(nopop) = false;
GVAR(spawnedMines) = [];
GVAR(EODPOS) = [[17407.6,13096.4,-0.00167561],[17409.3,13098,-0.00168133],[17410.7,13099.4,-0.00434685],[17412.6,13101.1,-0.00435638],[17408.7,13092.6,0.00167179],[17410.2,13094.3,5.72205e-006],[17411.9,13095.9,0],
[17413.2,13097.3,0],[17415.2,13099.1,0],[17411.6,13090.1,0.000333786],[17413.1,13091.8,0],[17414.8,13093.3,0],[17416.2,13094.7,0],[17418.1,13096.5,0],[17413.5,13085.9,0.000997543],[17415,13087.6,0],
[17416.7,13089.1,0],[17418,13090.5,0],[17420,13092.3,0],[17416,13082.5,0.00167179],[17417.6,13084.2,5.72205e-006],[17419.2,13085.7,0],[17420.6,13087.1,0],[17422.6,13088.9,0],[17420.3,13081,-0.00168037],
[17418.8,13079.3,0.000319481],[17422,13082.6,-0.00167656],[17423.3,13084,-0.00333881],[17425.3,13085.7,-0.00201321],[17422,13076.1,0.000319481],[17423.6,13077.8,-0.000350952],[17425.3,13079.4,-0.000355721],
[17426.6,13080.8,-0.00333881],[17428.6,13082.6,-0.00201321],[17424.3,13072.5,0.00120354],[17425.8,13074.2,5.72205e-006],[17427.5,13075.8,0],[17428.9,13077.2,0],[17430.8,13079,0],[17428.1,13069.3,0],
[17429.7,13071,0],[17431.3,13072.6,0],[17432.7,13073.9,0],[17434.7,13075.7,0],[17434.9,13069.1,0.00264454],[17436.4,13070.8,0.00097847],[17438.1,13072.4,-0.00184059],[17439.5,13073.8,-0.00467777],
[17441.4,13075.5,-0.00468731],[17427.7,13058.3,-0.00201225],[17429.2,13060,-0.00100136],[17430.9,13061.6,-0.00267792],[17432.2,13062.9,-0.00334167],[17434.2,13064.7,-0.00335217],[17438,13067.7,0.000660896],
[17439.6,13069.4,-0.00101185],[17441.3,13071,-0.00168324],[17442.6,13072.4,-0.00449467],[17444.6,13074.1,-0.00402737],[17431.2,13055.4,-0.00167465],[17432.8,13057.1,-0.0026722],[17434.4,13058.7,-0.00268364],
[17435.8,13060.1,-0.00335407],[17437.8,13061.9,-0.00402737],[17440.3,13063.2,0.000321388],[17441.8,13064.9,-0.00108337],[17443.5,13066.5,-0.00166798],[17444.8,13067.9,-0.00434494],[17446.8,13069.7,-0.00435448],
[17435.1,13050.7,-0.00167751],[17436.7,13052.4,-0.00267696],[17438.4,13054,-0.00301647],[17439.7,13055.4,-0.00434399],[17441.7,13057.2,-0.00435257],[17444.2,13059.8,0.000329971],[17445.8,13061.5,-0.00100422],
[17447.4,13063.1,-0.00234509],[17448.8,13064.4,-0.00501537],[17450.8,13066.2,-0.00435829],[17448.6,13053.9,-0.00100327],[17450.2,13055.6,-0.00266933],[17451.8,13057.2,-0.00268459],[17453.2,13058.6,-0.00401974],
[17455.2,13060.4,-0.00402927],[17439.4,13046.7,0.00100231],[17441,13048.4,-0.00667477],[17442.6,13050,-0.00367451],[17444,13051.3,-0.00435162],[17446,13053.1,-0.0026989],[17451.1,13048.2,-0.000684738],
[17452.7,13049.9,-0.0022459],[17454.3,13051.5,-0.00200653],[17455.7,13052.9,-0.00468063],[17457.7,13054.7,-0.00535011]];
