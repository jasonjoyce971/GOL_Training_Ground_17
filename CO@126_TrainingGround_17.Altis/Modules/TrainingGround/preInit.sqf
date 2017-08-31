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
GVAR(FiringRangeCANCEL) = false;
GVAR(nopop) = false;
