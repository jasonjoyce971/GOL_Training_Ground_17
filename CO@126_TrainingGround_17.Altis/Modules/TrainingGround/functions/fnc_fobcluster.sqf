// Store incoming vehicle types
_veh1 = _this select 0;
_veh2 = _this select 1;
_veh3 = _this select 2;
_veh4 = _this select 3;
_veh5 = _this select 4;
_veh6 = _this select 5;
_veh7 = _this select 6;
_veh8 = _this select 7;
_veh9 = _this select 8;
_veh10 = _this select 9;
_veh11 = _this select 10;
_veh12 = _this select 11;
_veh13 = _this select 12;
_veh14 = _this select 13;

_placements = [["Land_BagFence_Long_F",315.513,[17365.4,13139.4,0.000310898]],["Land_BagFence_Long_F",45.493,[17363.2,13139.4,-0.000164986]],
["Land_BagFence_Long_F",49.2877,[17363.9,13127.4,-0.000227928]],["Land_BagFence_Long_F",319.298,[17364.3,13129.5,0.000265121]],
["Land_BagFence_Long_F",49.2874,[17366.3,13129.4,-0.000239372]],["Land_BagFence_Long_F",319.298,[17366,13127.4,0.000265121]],
["Land_CncWall4_F",47.9986,[17388.5,13138.1,0.00622845]],["Land_CncBarrierMedium4_F",138.635,[17395.2,13139.3,-0.450702]],
["Land_CncBarrierMedium4_F",139.782,[17386.4,13131.9,-0.45048]],["Land_CncBarrierMedium4_F",139.775,[17380.7,13127,-0.450098]],
["Land_CncBarrierMedium4_F",139.774,[17375,13122.2,-0.450264]],["Land_CncBarrierMedium4_F",139.774,[17370.8,13118.6,-0.450263]],
["Land_BagFence_Long_F",315.51,[17363.5,13141.4,0.00028801]],["Land_BagFence_Long_F",45.496,[17365.6,13141.5,-0.000217438]],
["Land_BagFence_Long_F",41.1027,[17363.6,13151.4,-0.000216484]],["Land_BagFence_Long_F",311.113,[17363.8,13153.5,0.000250816]],
["Land_BagFence_Long_F",41.1045,[17365.8,13153.8,-0.000174522]],["Land_BagFence_Long_F",311.113,[17365.8,13151.7,0.000250816]],
["Land_CncWall4_F",141.657,[17346.8,13143.7,-0.000853539]],["Land_CncWall4_F",141.66,[17350.8,13146.9,0.000546455]],
["Land_CncWall4_F",141.657,[17354.8,13150.1,9.82285e-005]],["Land_CncWall4_F",141.66,[17358.9,13153.3,0.000901222]],
["Land_CncWall4_F",136.849,[17365.6,13158.7,0.000548363]],["Land_CncWall4_F",140.738,[17362.7,13156.2,-0.000105858]],
["Land_i_Addon_02_V1_F",227.608,[17391.9,13145.7,0.0421114]],["Land_BagBunker_Small_F",227.881,[17386.6,13154.5,-0.00998497]],
["Land_CncWall4_F",48.0021,[17385.1,13141.9,0.00425911]],["Land_CncWall4_F",46.0642,[17381.4,13145.7,0.00423145]],
["Land_CncWall4_F",46.0635,[17377.9,13149.5,0.00393105]],["Land_CncWall4_F",46.0651,[17374.4,13153.2,0.00342083]],
["Land_CncWall4_F",46.0675,[17370.8,13156.9,0.00433254]],["Land_CncWall4_F",136.865,[17370.3,13159.9,4.1008e-005]],
["Land_CncWall4_F",136.865,[17374,13163.4,4.19617e-005]],["Land_CncWall4_F",136.862,[17377.9,13166.6,-0.000660896]],
["Land_CncBarrierMedium4_F",49.2166,[17395.5,13166.9,-0.450054]],["Land_BagBunker_Large_F",227.352,[17379.7,13160.6,-0.00695896]],
["Land_CncBarrierMedium4_F",49.2215,[17400.5,13161.3,-0.450336]],["Land_CncBarrierMedium4_F",49.2215,[17405.4,13155.7,-0.450341]],
["Land_CncBarrierMedium4_F",138.619,[17406.3,13149.3,-0.450277]],["Land_CncBarrierMedium4_F",138.619,[17400.7,13144.3,-0.450151]],
["Land_CncWall4_F",136.861,[17381.7,13170.1,-0.000857353]],["Land_CncBarrierMedium4_F",49.2258,[17390.7,13172.2,-0.450497]],
["Land_HelipadSquare_F",224.926,[17532.5,13222.4,0]],["Land_BarrelSand_F",359.952,[17535.7,13251.9,0.000210762]],
["Land_BarrelEmpty_F",265.313,[17533.1,13248.7,7.24792e-005]],["Land_MetalBarrel_F",359.928,[17535.9,13253.5,9.72748e-005]],
["Land_MetalBarrel_F",311.778,[17534.8,13252.5,0.000274658]],["Land_MetalBarrel_F",305.328,[17533,13245.8,8.10623e-005]],
["Land_MetalBarrel_F",56.7684,[17530.6,13246.2,9.63211e-005]],["Land_HelipadSquare_F",224.867,[17566,13255.9,0]],
["Land_BarrelSand_F",359.971,[17574.8,13239.9,0.000227928]],["Land_BarrelEmpty_F",337.47,[17576.7,13239.1,0.000214577]],
["Land_BarrelEmpty_F",22.1717,[17577.4,13240.2,0.000142097]],["Land_MetalBarrel_F",311.823,[17575.2,13237.7,0.000530243]],
["Land_MetalBarrel_F",154.023,[17579.7,13241.9,0.000338554]],["Land_CncBarrier_F",6.09538,[17450.3,13288.5,5.53131e-005]],
["Land_CncBarrier_F",6.19005,[17446,13288.7,7.53403e-005]],["Land_BarrelEmpty_F",148.322,[17452.3,13289.1,0.000206947]],
["Land_BarrelEmpty_F",213.708,[17448.9,13289.3,0.000204086]],["Land_BarrelSand_F",36.5726,[17450.3,13287.7,0.000257492]],
["Land_MetalBarrel_F",281.475,[17447.8,13289.4,0.000242233]],["Land_MetalBarrel_F",47.4591,[17445.7,13287.8,0.000405312]],
["Land_HelipadRescue_F",93.6014,[17448.7,13299.3,1]],["Land_CargoBox_V1_F",282.177,[17444.3,13309.6,0.0339642]],
["Land_CncBarrier_F",4.9958,[17447.5,13309.1,0.000417709]],["Land_CncBarrier_F",5.02637,[17451.9,13308.9,0.00201416]],
["Land_BarrelEmpty_F",359.862,[17449.3,13309.7,0.00128937]],["Land_MetalBarrel_F",249.848,[17453.9,13308.3,0.00171185]],
["Land_CargoBox_V1_F",2.68567,[17464,13299.7,0.0310469]],["Land_CncBarrier_F",280.583,[17465.1,13297.3,0.000209808]],
["Land_CncBarrier_F",278.249,[17465.3,13302,0.000352859]],["Land_CncBarrier_F",280.241,[17464.7,13292.6,0.000108719]],
["Land_BarrelEmpty_F",348.499,[17464.9,13304,0.000165939]],["Land_BarrelSand_F",124.457,[17465.9,13295.9,0.000102997]],
["Land_MetalBarrel_F",269.045,[17463.8,13304.9,0.000185966]],["Land_MetalBarrel_F",295.111,[17464.2,13302.9,0.000161171]],
["Land_MetalBarrel_F",89.9661,[17465.4,13294.8,0.000104904]],["Land_MetalBarrel_F",39.8817,[17463.6,13291.1,7.05719e-005]],
["Land_Obstacle_RunAround_F",226.097,[17482.8,13244.2,0.000229836]],["Land_Obstacle_Ramp_F",224.867,[17491,13252.9,0.0189056]],
["Land_Obstacle_Saddle_F",49.0866,[17493.8,13255.7,1.06102]],["Land_Obstacle_Saddle_F",81.9388,[17497.1,13257.1,1.00853]],
["Land_Obstacle_Saddle_F",17.5475,[17499.3,13259.1,1.05124]],["Land_Obstacle_Saddle_F",49.0857,[17501.4,13262.2,1.07226]],
["Land_Obstacle_Ramp_F",46.2579,[17504.2,13264.8,0.0146446]],["Land_Obstacle_Climb_F",313.534,[17507.4,13268,4.19617e-005]],
["Land_Obstacle_Cross_F",226.024,[17512.7,13273.5,3.8147e-006]],["Land_Obstacle_Cross_F",226.024,[17515.8,13277,2.86102e-006]],
["Land_WoodenBox_F",225.488,[17512.7,13273.4,0.00168896]],["Land_WoodenBox_F",225.316,[17515.9,13277.2,1.14441e-005]],
["Land_Timbers_F",136.031,[17519.5,13280.7,0.00073719]],["PlasticBarrier_03_blue_F",138.751,[17522.8,13285.3,5.72205e-006]],
["PlasticBarrier_03_blue_F",138.744,[17524,13283.7,1.90735e-006]],["PlasticBarrier_03_blue_F",138.784,[17524.3,13286.7,2.38419e-005]],
["PlasticBarrier_03_blue_F",138.691,[17525.5,13285.1,-0.00045681]],["PlasticBarrier_03_blue_F",138.767,[17525.7,13287.9,2.67029e-005]],
["PlasticBarrier_03_blue_F",138.753,[17526.9,13286.3,2.57492e-005]],["PlasticBarrier_03_blue_F",138.121,[17527.2,13289.3,0.000907898]],
["PlasticBarrier_03_blue_F",138.536,[17528.4,13287.7,2.38419e-005]],["PlasticBarrier_03_blue_F",142.589,[17528.7,13290.4,0.00012207]],
["PlasticBarrier_03_blue_F",311.224,[17529.7,13288.9,6.38962e-005]],["PlasticBarrier_03_blue_F",185.572,[17530.3,13291,1.90735e-005]],
["PlasticBarrier_03_blue_F",167.119,[17531.3,13289.8,0.000391006]],["PlasticBarrier_03_blue_F",182.675,[17533.1,13289.9,0.00037384]],
["PlasticBarrier_03_blue_F",176.77,[17532.3,13290.9,9.53674e-006]],["PlasticBarrier_03_blue_F",293.452,[17534.4,13290.7,-0.00152206]],
["PlasticBarrier_03_blue_F",245.059,[17534.3,13292.4,7.43866e-005]],["PlasticBarrier_03_blue_F",329.716,[17533.2,13292.9,8.01086e-005]],
["PlasticBarrier_03_blue_F",337.765,[17530.9,13293.3,1.90735e-005]],["PlasticBarrier_03_blue_F",292.741,[17529.6,13292,2.28882e-005]],
["PlasticBarrier_03_blue_F",164.457,[17531.6,13292.1,1.52588e-005]],["PlasticBarrier_03_blue_F",337.826,[17532.6,13293.9,8.10623e-005]],
["Land_CncBarrier_F",156.586,[17534.9,13295.1,9.53674e-007]],["Land_CncBarrier_F",156.586,[17535.5,13293.8,0]],
["Land_CncBarrier_F",171.686,[17537.6,13295.9,0]],["Land_CncBarrier_F",228.053,[17539.9,13295.1,0]],
["Land_CncBarrier_F",258.562,[17540.9,13292.7,-9.53674e-007]],["Land_CncBarrier_F",234.567,[17537.6,13293.3,0]],
["Land_CncBarrier_F",263.322,[17538.5,13290.9,0]],["Land_Obstacle_Crawl_F",353.171,[17540.2,13288.8,0.00234699]],
["Land_Obstacle_Crawl_F",353.171,[17540.8,13283.6,0.00165749]],["Land_Obstacle_Pass_F",53.1121,[17539.5,13278.9,0.00589371]],
["Land_CncBarrier_F",293.385,[17542.1,13280,0]],["Land_CncBarrier_F",324.84,[17540.5,13278,0]],
["Land_ConcretePipe_F",241.129,[17534.9,13275.4,-0.0141134]],["Land_Obstacle_Bridge_F",79.9687,[17539.4,13284.9,-0.000203133]],
["Land_Net_Fence_4m_F",326.118,[17529,13269.9,0]],["Land_Net_Fence_4m_F",326.118,[17525.7,13267.6,0]],
["Land_Net_Fence_4m_F",37.1514,[17522.3,13267.8,0]],["Land_Net_Fence_4m_F",74.1738,[17520.2,13270.9,0]],
["Land_Net_Fence_4m_F",133.909,[17521.1,13274.2,0]],["Land_Net_Fence_4m_F",146.058,[17524.2,13276.8,0]],
["Land_Net_Fence_4m_F",139.81,[17527.3,13279.2,9.53674e-007]],["Land_Net_Fence_4m_F",65.0874,[17528.1,13282.2,-9.53674e-007]],
["Land_Net_Fence_4m_F",139.575,[17528.8,13285.4,0]],["Land_Net_Fence_4m_F",202.603,[17532.2,13285.9,0]],
["Land_Net_Fence_4m_F",326.118,[17526.3,13271,0]],["Land_Net_Fence_4m_F",347.834,[17522.7,13269.4,0]],
["Land_Net_Fence_pole_F",0,[17529.2,13273.3,9.53674e-007]],["Land_Net_Fence_4m_F",328.549,[17526.9,13274.7,0]],
["Land_Net_Fence_4m_F",0,[17530.5,13275.7,0]],["Land_Net_Fence_4m_F",328.549,[17521.9,13271.9,0]],
["Land_Net_Fence_pole_F",0,[17525.2,13273.7,0]],["Land_Net_Fence_4m_F",308.525,[17529.9,13277.4,0]],
["Land_Net_Fence_4m_F",320.892,[17532.7,13280.2,-9.53674e-007]],["Land_Net_Fence_pole_F",0,[17534.1,13285,0]],
["Land_CncBarrier_F",0,[17545.3,13287.2,0]],["Land_CncBarrier_F",24.375,[17547.8,13286.6,-9.53674e-007]],
["Land_CncBarrier_F",54.9397,[17549.8,13285,0]],["Land_CncBarrier_F",303.791,[17549.7,13282.6,0]],
["Land_CncBarrier_F",311.25,[17548.1,13280.5,0]],["Land_CncBarrier_F",311.25,[17546.2,13278.5,0]],
["Land_CncBarrier_F",311.25,[17544.5,13276.5,0]],["Land_CncBarrier_F",317.671,[17542.6,13274.6,0]],
["Land_CncBarrier_F",141.321,[17537.5,13275.5,0]],["Land_CncBarrier_F",140.415,[17540.1,13272.5,1.71661e-005]],
["Land_Net_Fence_4m_F",326.118,[17532.3,13272.1,9.53674e-007]],["Land_Net_Fence_4m_F",326.118,[17530.9,13274.4,9.53674e-007]],
["ShootingPos_F",225.274,[17513.8,13248.9,-0.00335789]],["ShootingPos_F",225.993,[17508.7,13254.2,0.00661945]],
["Target_Swivel_01_ground_F",226.799,[17483.3,13218.7,3.62396e-005]],["Target_Swivel_01_ground_F",226.802,[17477.3,13223.8,7.62939e-005]],
["TargetBootcampHuman_F",222.99,[17483.5,13215.8,0.00053215]],["TargetBootcampHuman_F",222.991,[17480.9,13218.7,0.000823975]],
["TargetBootcampHuman_F",222.991,[17478.1,13221.9,0.000812531]],["TargetBootcampHuman_F",222.992,[17475.4,13224.8,0.00133991]],
["Land_BagFence_Short_F",48.4847,[17478.6,13222.4,-4.1008e-005]],["Land_BagFence_Short_F",48.4847,[17481.5,13219.1,0.000955582]],
["Land_Bricks_V1_F",42.6849,[17484.1,13216.6,-4.76837e-006]],["Land_Bricks_V1_F",45.9031,[17476,13225.4,-2.86102e-006]],
["Land_Obstacle_Cross_F",226.025,[17536.2,13271.3,2.67029e-005]],["Land_WoodenBox_F",225.51,[17536.2,13271.3,-5.72205e-006]],
["Land_Obstacle_Cross_F",226.025,[17533.2,13268.4,2.76566e-005]],["Land_WoodenBox_F",225.509,[17533.3,13268.4,-9.53674e-006]],
["Land_Obstacle_Cross_F",226.025,[17529.8,13265.1,3.52859e-005]],["Land_WoodenBox_F",225.518,[17529.8,13265.1,0.000137329]],
["Land_Obstacle_RunAround_F",226.101,[17460.7,13267.8,0.00044632]],["Land_Obstacle_Ramp_F",224.866,[17468.9,13276.5,6.86646e-005]],
["Land_Obstacle_Saddle_F",49.0853,[17471.7,13279.3,1.04064]],["Land_Obstacle_Saddle_F",81.9431,[17475.2,13280.8,1.14664]],
["Land_Obstacle_Saddle_F",17.5427,[17477.6,13282.8,1.08116]],["Land_Obstacle_Saddle_F",49.0844,[17479.3,13285.7,1.03049]],
["Land_Obstacle_Ramp_F",46.2556,[17482.1,13288.4,5.72205e-005]],["Land_Obstacle_Climb_F",313.538,[17485.3,13291.6,0.000295639]],
["Land_Obstacle_Cross_F",226.024,[17490.6,13297.1,9.53674e-007]],["Land_Obstacle_Cross_F",226.024,[17493.7,13300.6,3.8147e-006]],
["Land_WoodenBox_F",225.501,[17490.6,13297,0.000487328]],["Land_WoodenBox_F",225.316,[17493.8,13300.8,1.43051e-005]],
["Land_Timbers_F",136.031,[17497.4,13304.3,-0.00328922]],["PlasticBarrier_03_blue_F",138.738,[17500.7,13308.9,-0.000197411]],
["PlasticBarrier_03_blue_F",138.724,[17501.9,13307.3,6.58035e-005]],["PlasticBarrier_03_blue_F",138.785,[17502.2,13310.3,0.000102043]],
["PlasticBarrier_03_blue_F",138.669,[17503.4,13308.7,9.34601e-005]],["PlasticBarrier_03_blue_F",138.752,[17503.6,13311.5,9.34601e-005]],
["PlasticBarrier_03_blue_F",138.787,[17504.8,13309.9,-0.000259399]],["PlasticBarrier_03_blue_F",138.126,[17505.1,13312.9,-0.000113487]],
["PlasticBarrier_03_blue_F",138.583,[17506.3,13311.3,0.00150013]],["PlasticBarrier_03_blue_F",142.613,[17506.6,13314,9.44138e-005]],
["PlasticBarrier_03_blue_F",311.264,[17507.6,13312.5,0.00064373]],["PlasticBarrier_03_blue_F",185.573,[17508.2,13314.6,9.91821e-005]],
["PlasticBarrier_03_blue_F",167.136,[17509.2,13313.4,9.63211e-005]],["PlasticBarrier_03_blue_F",182.572,[17511,13313.5,0.000108719]],
["PlasticBarrier_03_blue_F",176.786,[17510.2,13314.5,9.34601e-005]],["PlasticBarrier_03_blue_F",292.532,[17512.3,13314.3,7.15256e-005]],
["PlasticBarrier_03_blue_F",245.017,[17512.2,13316,9.15527e-005]],["PlasticBarrier_03_blue_F",329.744,[17511.1,13316.5,0.000101089]],
["PlasticBarrier_03_blue_F",337.772,[17508.8,13316.9,8.7738e-005]],["PlasticBarrier_03_blue_F",292.739,[17507.5,13315.6,9.72748e-005]],
["PlasticBarrier_03_blue_F",164.463,[17509.5,13315.7,9.25064e-005]],["PlasticBarrier_03_blue_F",337.844,[17510.5,13317.5,8.96454e-005]],
["Land_CncBarrier_F",156.582,[17512.8,13318.7,2.19345e-005]],["Land_CncBarrier_F",156.583,[17513.4,13317.4,-3.91006e-005]],
["Land_CncBarrier_F",171.679,[17515.5,13319.5,-2.57492e-005]],["Land_CncBarrier_F",228.058,[17517.8,13318.7,-4.76837e-006]],
["Land_CncBarrier_F",258.569,[17518.8,13316.3,5.91278e-005]],["Land_CncBarrier_F",234.57,[17515.5,13316.9,-9.53674e-006]],
["Land_CncBarrier_F",263.324,[17516.4,13314.5,3.52859e-005]],["Land_Obstacle_Crawl_F",353.172,[17518.1,13312.4,0.00180054]],
["Land_Obstacle_Crawl_F",353.173,[17518.7,13307.2,0.00180721]],["Land_Obstacle_Pass_F",53.1131,[17517.4,13302.6,0.00956249]],
["Land_CncBarrier_F",293.381,[17520,13303.6,9.82285e-005]],["Land_CncBarrier_F",324.836,[17518.4,13301.6,0.000127792]],
["Land_ConcretePipe_F",232.035,[17512.5,13299.1,0.0106716]],["Land_Obstacle_Bridge_F",79.9762,[17517.3,13308.6,-0.000483513]],
["Land_Net_Fence_4m_F",326.119,[17506.9,13293.5,0.00426483]],["Land_Net_Fence_4m_F",326.117,[17503.6,13291.2,-0.00450134]],
["Land_Net_Fence_4m_F",37.1544,[17500.2,13291.5,0.0232925]],["Land_Net_Fence_4m_F",74.1721,[17498.1,13294.5,0.0111952]],
["Land_Net_Fence_4m_F",133.909,[17499,13297.8,0.00386429]],["Land_Net_Fence_4m_F",146.058,[17502.1,13300.4,0.00148964]],
["Land_Net_Fence_4m_F",139.809,[17505.2,13302.8,0.00648308]],["Land_Net_Fence_4m_F",65.0858,[17506,13305.8,0.0175743]],
["Land_Net_Fence_4m_F",139.574,[17506.7,13309,0.0130272]],["Land_Net_Fence_4m_F",202.604,[17510.1,13309.5,-0.0089674]],
["Land_Net_Fence_4m_F",326.119,[17504.2,13294.6,0.00427246]],["Land_Net_Fence_4m_F",347.836,[17500.6,13293,0.0112257]],
["Land_Net_Fence_pole_F",0.00356489,[17507.1,13297,-7.62939e-005]],["Land_Net_Fence_4m_F",328.55,[17504.8,13298.3,0.00432491]],
["Land_Net_Fence_4m_F",0.00254634,[17508.4,13299.3,0.0131702]],["Land_Net_Fence_4m_F",328.548,[17499.8,13295.5,-0.00382137]],
["Land_Net_Fence_pole_F",0.00122232,[17503.1,13297.3,-4.00543e-005]],["Land_Net_Fence_4m_F",308.522,[17507.8,13301.1,-0.0133457]],
["Land_Net_Fence_4m_F",320.889,[17510.6,13303.9,-0.00929165]],["Land_Net_Fence_pole_F",359.998,[17512,13308.7,7.43866e-005]],
["Land_CncBarrier_F",0.00112047,[17523.2,13310.8,0.000184059]],["Land_CncBarrier_F",24.3806,[17525.7,13310.3,0.000201225]],
["Land_CncBarrier_F",54.9482,[17527.7,13308.7,0.000157356]],["Land_CncBarrier_F",303.785,[17527.6,13306.2,0.000166893]],
["Land_CncBarrier_F",311.245,[17526,13304.1,0.000151634]],["Land_CncBarrier_F",311.245,[17524.1,13302.1,0.000143051]],
["Land_CncBarrier_F",311.245,[17522.4,13300.1,0.000121117]],["Land_CncBarrier_F",317.668,[17520.5,13298.2,0.000103951]],
["Land_CncBarrier_F",141.319,[17515.4,13299.1,-0.000100136]],["Land_CncBarrier_F",140.413,[17518,13296.1,-9.53674e-005]],
["Land_Net_Fence_4m_F",326.118,[17510.2,13295.8,0.000581741]],["Land_Net_Fence_4m_F",326.119,[17508.8,13298,0.0035305]],
["ShootingPos_F",225.274,[17491.7,13272.5,0.00827694]],["ShootingPos_F",225.992,[17486.6,13277.8,0.00336838]],
["Target_Swivel_01_ground_F",226.8,[17461.2,13242.4,1.90735e-005]],["Target_Swivel_01_ground_F",226.805,[17455.2,13247.5,-1.90735e-005]],
["TargetBootcampHuman_F",222.991,[17461.4,13239.4,0.000507355]],["TargetBootcampHuman_F",222.992,[17458.8,13242.3,0.000654221]],
["TargetBootcampHuman_F",222.992,[17456,13245.5,0.000478745]],["TargetBootcampHuman_F",222.995,[17453.3,13248.5,0.000460625]],
["Land_BagFence_Short_F",48.4857,[17456.5,13246,-2.95639e-005]],["Land_BagFence_Short_F",48.4858,[17459.4,13242.7,-3.43323e-005]],
["Land_Bricks_V1_F",42.6845,[17462,13240.2,-2.86102e-006]],["Land_Bricks_V1_F",45.9046,[17453.9,13249,-1.90735e-005]],
["Land_Obstacle_Cross_F",226.027,[17514.1,13294.9,-2.00272e-005]],["Land_WoodenBox_F",225.512,[17514.1,13294.9,4.76837e-006]],
["Land_Obstacle_Cross_F",226.022,[17511.1,13292,-2.67029e-005]],["Land_WoodenBox_F",225.506,[17511.2,13292,1.81198e-005]],
["Land_Obstacle_Cross_F",226.026,[17507.7,13288.7,-2.67029e-005]],["Land_WoodenBox_F",225.517,[17507.7,13288.7,1.33514e-005]],
["CamoNet_BLUFOR_F",287.414,[17272.8,13452.6,0.00329018]],["Land_ClutterCutter_large_F",292.533,[17272.7,13452.5,0]],
["Land_Bench_F",297.471,[17273.3,13454.7,0.0218773]],["Land_ChairWood_F",172.58,[17274.3,13452.6,4.19617e-005]],
["MapBoard_altis_F",337.285,[17274.8,13456,8.2016e-005]],["Land_BagFence_Long_F",215.426,[17338.7,13554.2,0.00161934]],
["TargetP_Inf_F",210.391,[17335.9,13541.4,0.449504]],["TargetP_Inf_F",211.334,[17334.2,13541.1,0.450331]],
["TargetP_Inf_F",211.33,[17330.3,13545,0.450026]],["TargetP_Inf_F",230.177,[17329.3,13541.6,0.448956]],
["TargetP_Inf_F",212.908,[17332.2,13538.8,0.449655]],["TargetP_Inf_F",220.616,[17329.8,13539.4,0.44961]],
["TargetP_Inf_F",216.093,[17330.9,13534.8,0.464399]],["TargetP_Inf_F",223.358,[17326.4,13537.5,0.457479]],
["CamoNet_BLUFOR_F",116.629,[17351.7,13547.9,0.00998497]],["Land_BagFence_Long_F",37.7472,[17343.8,13555.9,0.000928879]],
["Land_BagFence_Long_F",207.875,[17341.4,13552.8,0.00225925]],["Land_ClutterCutter_large_F",95.7235,[17351.7,13547.6,0]],
["Land_Bench_F",124.047,[17350.9,13546,0.000164986]],["Land_ChairWood_F",6.51465,[17350.4,13548.2,4.86374e-005]],
["MapBoard_altis_F",165.294,[17349.2,13544.9,-0.000845909]],["Land_BagFence_Long_F",44.4554,[17335.8,13562.5,-4.00543e-005]],
["Land_BagFence_Long_F",40.2154,[17338.1,13560.6,-8.01086e-005]],["TargetP_Inf_F",39.347,[17344.4,13572.7,0.294612]],
["TargetP_Inf_F",39.347,[17346.1,13571.2,0.294593]],["TargetP_Inf_F",39.3599,[17348.6,13568.9,0.29833]],
["TargetP_Inf_F",39.3885,[17348.6,13574.7,0.297396]],["TargetP_Inf_F",39.2585,[17347.9,13576.8,0.29925]],
["TargetP_Inf_F",39.3882,[17355.2,13564.9,0.301718]],["TargetP_Inf_F",39.3882,[17356.3,13565.8,0.301799]],
["TargetP_Inf_F",39.3599,[17351.4,13567.4,0.297529]],["TargetP_Inf_F",39.3599,[17353,13568.2,0.29833]],
["TargetP_Inf_F",39.4098,[17353.3,13567.1,0.298294]],["TargetP_Inf_F",39.2389,[17356.4,13567.1,0.306375]],
["TargetP_Inf_F",39.2389,[17358.1,13565.3,1.50633]],["TargetP_Inf_F",39.347,[17346.1,13572.2,4.09453]],
["TargetP_Inf_F",46.4928,[17348.1,13570.7,4.09947]],["TargetP_Inf_F",40.9786,[17353.2,13565.4,4.09855]],
["TargetP_Inf_F",42.0903,[17355.7,13563.3,4.10227]],
["Land_CncWall4_F",50.0325,[17759.1,13396,0]],["Land_Cargo_Patrol_V3_F",225.164,[17554.2,13167.1,-1.90735e-006]],
["CamoNet_INDP_F",317.937,[17539.2,13184.8,-0.00144386]],["Land_BagBunker_Small_F",225.869,[17548.8,13175.2,0.00952053]],
["Land_BagFence_Long_F",45.6691,[17547.5,13179.3,0.000509262]],["Land_BagFence_Long_F",45.6691,[17545.4,13181.4,0.000508308]],
["Land_ClutterCutter_large_F",323.057,[17539.2,13184.9,0]],["MapBoard_altis_F",348.4,[17541.7,13187.7,-0.00187111]],
["TargetP_Inf_F",48.584,[17594.2,13195.3,-0.00527191]],["TargetP_Inf_F",48.584,[17592,13197.9,-0.00527191]],
["TargetP_Inf_F",48.6068,[17579.7,13211.4,-0.00355625]],["TargetP_Inf_F",48.6068,[17577.5,13214,-0.00355625]],
["TargetP_Inf_F",48.6369,[17575.1,13216.7,-0.00590706]],["TargetP_Inf_F",48.6548,[17589.6,13200.4,-0.0121622]],
["TargetP_Inf_F",48.6548,[17587.4,13203.1,-0.0121622]],["TargetP_Inf_F",48.641,[17585.1,13205.5,-0.00568581]],
["TargetP_Inf_F",48.604,[17582.5,13208.4,-0.002882]],["TargetP_Inf_F",48.8596,[17609.9,13254.3,-0.0271549]],
["TargetP_Inf_F",48.7131,[17612,13251.8,-0.0258121]],["TargetP_Inf_F",48.7131,[17614.4,13249.1,-0.0258121]],
["TargetP_Inf_F",48.7131,[17616.7,13246.5,-0.0258121]],["TargetP_Inf_F",48.8354,[17618.9,13244.2,-0.0299978]],
["TargetP_Inf_F",48.8354,[17621.2,13241.6,-0.0299978]],["TargetP_Inf_F",48.8354,[17623.4,13239.1,-0.0299978]],
["TargetP_Inf_F",48.363,[17625.8,13236.5,-0.0312071]],["TargetP_Inf_F",48.363,[17628.3,13234,-0.031208]],
["TargetP_Inf_F",48.576,[17645.8,13287.1,0.00136471]],["TargetP_Inf_F",48.5912,[17647.8,13284.9,-0.00139618]],
["TargetP_Inf_F",48.5912,[17650.5,13282,-0.00139618]],["TargetP_Inf_F",48.5912,[17653.1,13279.2,-0.00139618]],
["TargetP_Inf_F",48.473,[17655.4,13276.4,0.0117731]],["TargetP_Inf_F",48.5608,[17658,13273.6,0.00489807]],
["TargetP_Inf_F",48.5608,[17660.2,13271,0.00489807]],["TargetP_Inf_F",48.1644,[17662.5,13268.5,0.0262775]],
["TargetP_Inf_F",48.228,[17664.7,13266.1,0.0235367]],["TargetP_Inf_F",48.159,[17683,13318.3,0.0579233]],
["TargetP_Inf_F",48.159,[17684.5,13316,0.0579233]],["TargetP_Inf_F",48.1796,[17687.1,13313.6,0.0569706]],
["TargetP_Inf_F",48.053,[17689.6,13310.9,0.0476694]],["TargetP_Inf_F",48.053,[17691.6,13308.4,0.0476694]],
["TargetP_Inf_F",48.1338,[17693.8,13305.9,0.0439129]],["TargetP_Inf_F",48.1089,[17696.3,13303.2,0.0408764]],
["TargetP_Inf_F",48.1089,[17698.9,13300.2,0.0408764]],["TargetP_Inf_F",48.1253,[17701.6,13296.8,0.0288696]],
["TargetP_Inf_F",48.6156,[17722.1,13347.9,-0.00873756]],["TargetP_Inf_F",48.5664,[17724.4,13345.3,0.00273323]],
["TargetP_Inf_F",48.5664,[17726.2,13343.1,0.00273323]],["TargetP_Inf_F",48.582,[17728.3,13340.9,0.00130463]],
["TargetP_Inf_F",48.5268,[17730.7,13338.2,0.00652695]],["TargetP_Inf_F",48.5268,[17732.9,13335.7,0.00652695]],
["TargetP_Inf_F",48.5916,[17735.2,13333.3,0.00257301]],["TargetP_Inf_F",48.696,[17737.9,13330.3,-0.00893784]],
["TargetP_Inf_F",48.5944,[17719.5,13350.5,0.00344086]],["Land_CncWall4_F",49.0404,[17775.9,13376.3,-0.036705]],
["Land_CncWall4_F",49.0218,[17779.4,13372.4,-0.0350657]],["Land_CncWall4_F",48.9726,[17782.7,13368.6,-0.0391693]],
["Land_CncWall4_F",49.035,[17786.1,13364.7,-0.0439367]],["TargetP_Inf_F",48.5416,[17762.1,13378.7,0.0212708]],
["TargetP_Inf_F",48.5416,[17764.7,13375.7,0.0212708]],["TargetP_Inf_F",48.5416,[17767,13373.1,0.0212708]],
["TargetP_Inf_F",48.5912,[17769.5,13370.3,0.0244522]],["TargetP_Inf_F",48.5832,[17771.5,13368.2,0.0147285]],
["TargetP_Inf_F",48.5832,[17773.8,13365.7,0.0147285]],["TargetP_Inf_F",48.5488,[17776.3,13362.7,0.0157623]],
["TargetP_Inf_F",48.5159,[17757.7,13383.6,0.0144501]],["TargetP_Inf_F",48.8785,[17759.9,13381.2,-0.00542068]],
["Land_CncWall4_F",49.1673,[17762.3,13392,0.0327911]],["Land_CncWall4_F",49.1673,[17765.7,13388.1,0.0327902]],
["Land_CncWall4_F",49.1686,[17769,13384.2,0.0367327]],["Land_CncWall4_F",48.9723,[17772.4,13380.3,-0.0420752]],
["ShootingPos_F",47.6866,[17551.6,13172.5,0.00165367]],["ShootingPos_F",136.253,[17595,13150.9,0.0160933]],
["Land_CncWall4_F",136.156,[17628.9,13109.3,-0.0186863]],["Land_CncWall4_F",136.186,[17636.4,13116.6,-0.0196133]],
["Land_CncWall4_F",136.186,[17632.6,13112.9,-0.019474]],["ShootingPos_F",136.559,[17624,13175.9,0.00137615]],
["Land_CncWall4_F",136.777,[17681.6,13124.3,-0.0231533]],["Land_CncWall4_F",136.718,[17677.8,13120.7,-0.0226288]],
["Land_CncWall4_F",136.524,[17674.1,13117.1,-0.00722885]],["CamoNet_INDP_F",137.121,[17611.3,13160.3,3.24249e-005]],
["Land_ClutterCutter_large_F",0.013442,[17577.3,13220.3,9.53674e-007]],["Land_ClutterCutter_large_F",0.0034631,[17582.5,13215,-9.53674e-007]],
["Land_ClutterCutter_large_F",0.0121203,[17587.8,13209.6,0]],["Land_ClutterCutter_large_F",0.00570366,[17592.5,13204.4,-9.53674e-007]],
["Land_ClutterCutter_large_F",0.0374672,[17599.5,13197.2,9.53674e-007]],["Land_ClutterCutter_large_F",0.140735,[17611.1,13202.1,0]],
["Land_ClutterCutter_large_F",359.888,[17602.8,13207.9,0]],["Land_ClutterCutter_large_F",359.997,[17595.5,13214.8,9.53674e-007]],
["Land_ClutterCutter_large_F",359.988,[17589.8,13220.2,9.53674e-007]],["Land_ClutterCutter_large_F",0.00814785,[17583.6,13226.7,0]],
["Land_ClutterCutter_large_F",0.00224082,[17585.6,13218.3,0]],["Land_ClutterCutter_large_F",0,[17596.2,13207.1,0]],
["Land_ClutterCutter_large_F",0.0374672,[17601.1,13198.9,9.53674e-007]],["Land_ClutterCutter_large_F",359.987,[17596.6,13201,0]],
["Land_ClutterCutter_large_F",0.139903,[17614,13206.9,0]],["Land_ClutterCutter_large_F",0.165556,[17621.4,13209.4,0]],
["Land_ClutterCutter_large_F",0.169183,[17621.8,13212.2,0]],["Land_ClutterCutter_large_F",359.886,[17617.3,13215.1,0]],
["Land_ClutterCutter_large_F",0.0715788,[17610.7,13213.2,0]],["Land_ClutterCutter_large_F",359.991,[17601.9,13215.7,-9.53674e-007]],
["Land_ClutterCutter_large_F",359.989,[17608.8,13220.7,0]],["Land_ClutterCutter_large_F",0.00224084,[17604.4,13227.5,0]],
["Land_ClutterCutter_large_F",359.996,[17599,13224.8,0]],["Land_ClutterCutter_large_F",359.994,[17594.6,13222.7,0]],
["Land_ClutterCutter_large_F",359.996,[17600.6,13231.9,0]],["Land_ClutterCutter_large_F",0.0018335,[17594.7,13237.6,0]],
["Land_ClutterCutter_large_F",0.0018335,[17589.8,13240.7,0]],["Land_ClutterCutter_large_F",0.0168032,[17585.3,13237,0]],
["Land_ClutterCutter_large_F",359.991,[17589,13230.8,0]],["Land_ClutterCutter_large_F",359.994,[17594.5,13227.2,-9.53674e-007]],
["Land_ClutterCutter_large_F",0.0146662,[17581.1,13232.5,0]],["Land_ClutterCutter_large_F",0.019552,[17575.6,13227.7,0]],
["Land_ClutterCutter_large_F",0.00916697,[17573.6,13221.3,0]],["Land_ClutterCutter_large_F",0.0128331,[17568.4,13215.2,0]],
["Land_ClutterCutter_large_F",0.00662058,[17574.5,13213.2,0]],["Land_ClutterCutter_large_F",359.996,[17575.6,13207.1,0]],
["Land_ClutterCutter_large_F",0.0116113,[17581.3,13203.6,0]],["Land_ClutterCutter_large_F",0.0110002,[17584.7,13197.4,9.53674e-007]],
["Land_ClutterCutter_large_F",359.969,[17591.3,13193.7,0]],["Land_ClutterCutter_large_F",0.0328837,[17594.1,13186.5,0]],
["Land_ClutterCutter_large_F",0.00264814,[17565.4,13210,0]],["Land_ClutterCutter_large_F",0.00162963,[17568.1,13206.3,0]],
["Land_ClutterCutter_large_F",359.998,[17569.5,13201.5,0]],["Land_ClutterCutter_large_F",0.00203703,[17577.1,13197.3,0]],
["Land_ClutterCutter_large_F",0.00916663,[17577.9,13192.7,0]],["Land_ClutterCutter_large_F",0.00366688,[17586.6,13187.8,-9.53674e-007]],
["Land_ClutterCutter_large_F",359.959,[17588.3,13184.1,0]],["Land_ClutterCutter_large_F",0.00550041,[17560.6,13205.8,9.53674e-007]],
["Land_ClutterCutter_large_F",359.99,[17557.5,13202.7,0]],["Land_ClutterCutter_large_F",359.996,[17564.7,13199.6,9.53674e-007]],
["Land_ClutterCutter_large_F",359.996,[17561.7,13196.3,9.53674e-007]],["Land_ClutterCutter_large_F",0.00336129,[17569.5,13193.6,0]],
["Land_ClutterCutter_large_F",0.0038707,[17565.6,13189,0]],["Land_ClutterCutter_large_F",0.0128331,[17575.4,13185.9,0]],
["Land_ClutterCutter_large_F",359.999,[17571.8,13182.3,9.53674e-007]],["Land_ClutterCutter_large_F",0.0128331,[17584.9,13179,0]],
["Land_ClutterCutter_large_F",359.996,[17578.2,13176.5,0]],["Land_ClutterCutter_large_F",0.0116113,[17581,13184.6,0]],
["Land_ClutterCutter_large_F",0.0111949,[17581.8,13172.5,0]],["Land_ClutterCutter_large_F",359.995,[17556.9,13196.7,-9.53674e-007]],
["Land_ClutterCutter_large_F",359.993,[17551.9,13194.2,0]],["Land_ClutterCutter_large_F",359.985,[17556.2,13190.5,9.53674e-007]],
["Land_ClutterCutter_large_F",0,[17561,13184.8,-9.53674e-007]],["Land_ClutterCutter_large_F",0.00061115,[17568.6,13176.7,-9.53674e-007]],
["Land_ClutterCutter_large_F",360,[17574.8,13170.1,0]],["Land_ClutterCutter_large_F",0,[17564.6,13180,-9.53674e-007]],
["Land_ClutterCutter_large_F",359.995,[17550.7,13185.9,0]],["Land_ClutterCutter_large_F",0.00152786,[17554.7,13180.9,0]],
["Land_ClutterCutter_large_F",359.999,[17558.3,13176.8,0]],["Land_ClutterCutter_large_F",359.999,[17561.5,13173.7,0]],
["Land_ClutterCutter_large_F",359.997,[17550.3,13183.4,0]],["Land_ClutterCutter_large_F",359.999,[17556.9,13177.1,0]],
["Land_ClutterCutter_large_F",0.00183348,[17565.2,13167.4,0]]];

{
	_veh = createVehicle [_x select 0, _x select 2, [], 0, "CAN_COLLIDE"];
	_dir = _x select 1;
	_veh setDir _dir;
	sleep 0.1;
} foreach _placements;

// spawn relevant vehicles -> must include transport for squads to move between ranges
_heli = createVehicle [_veh1, [17337.5,13581.9,0], [], 0, "NONE"];
_heli setDir 214.319;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh2, [17323.8,13558.2,0], [], 0, "NONE"];
_heli setDir 28.693;
GW_TrainingGround_spawnedAssets pushBack _heli;
  
_heli = createVehicle [_veh3, [17319.2,13548.8,0], [], 0, "NONE"];
_heli setDir 28.403;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh4, [17405.7,13214.8,0], [], 0, "NONE"];
_heli setDir 168.024;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh5, [17434.8,13168.2,0], [], 0, "NONE"];
_heli setDir 46.175;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh6, [17438.2,13164.3,0], [], 0, "NONE"];
_heli setDir 47.537;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh7, [17475.7,13164.9,0], [], 0, "NONE"];
_heli setDir 45.676;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh8, [17491,13195.4,0], [], 0, "NONE"];
_heli setDir 46.708;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh9, [17524.4,13176.7,0], [], 0, "NONE"];
_heli setDir 317.478;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh10, [17532.7,13222,0], [], 0, "NONE"];
_heli setDir 0;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh11, [17550.3,13240.4,0], [], 0, "NONE"];
_heli setDir 0;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh12, [17565.6,13256,0], [], 0, "NONE"];
_heli setDir 0;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh13, [17527.8,13243.7,0], [], 0, "NONE"];
_heli setDir 45.147;
GW_TrainingGround_spawnedAssets pushBack _heli;

_heli = createVehicle [_veh14, [17557.4,13265.9,6.67572e-006], [], 0, "NONE"];
_heli setDir 45.219;
GW_TrainingGround_spawnedAssets pushBack _heli;

// range control laptop configuration
Laptop3 addAction ["<t color='#F7FE2E'>Make targets pop back up</t>",{GW_TrainingGround_nopop = false; publicVariable "nopop";}];

[Laptop6,OcelotFiringRange,"Modules\TrainingGround\scripts\Popup Targets\Firing Ranges.sqf"] Call GW_TrainingGround_fnc_HandleRange;
Laptop6 AddAction ["<t color='#58D3F7'>Qualification</t>",{["Qualification",OcelotFiringRange,MarksmanQualification] execVM "Modules\TrainingGround\scripts\Popup Targets\Firing Ranges.sqf"},nil,5,false,true];
Laptop6 AddAction ["<t color='#FF8000'>Cancel current challenge</t>",{FiringRangeCANCEL = True;},nil,5];

[Laptop13,PistolDraw] call GW_TrainingGround_fnc_HandlePistolDraw;

Laptop31 AddAction ["<t color='#F7FE2E'>LEFT DRILL: Training Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsLEFT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Training", "75m",BurstsDrillLeft] execVM "Modules\TrainingGround\scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#58D3F7'>LEFT DRILL: Qualification Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsLEFT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Qualification", "75m",BurstsDrillLeft] execVM "Modules\TrainingGround\scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#F7FE2E'>RIGHT DRILL: Training Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsRIGHT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Training", "50m",BurstsDrillRight] execVM "Modules\TrainingGround\scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];
Laptop31 AddAction ["<t color='#58D3F7'>RIGHT DRILL: Qualification Mode</t>",{[(nearestObjects [(getpos BurstsFiringDrillWallsRIGHT), ["Land_CncWall4_F"], 10]), "Steel_Plate_L_F", 3, "Qualification", "50m",BurstsDrillRight] execVM "Modules\TrainingGround\scripts\Popup Targets\BurstFiringDrill.sqf"},nil,5,false,true];

Laptop8 addAction ["<t color='#58D3F7'>Raise all targets",{{_x setDamage 0; _x animate["terc", 0]} forEach laneTargets14;}];  
Laptop8 addAction ["<t color='#58D3F7'>Lower all targets",{{_x setDamage 0; _x animate["terc", 1]} forEach laneTargets14;}];  
Laptop8 addAction ["<t color='#F7FE2E'>Challenge - Medium</t>",{ExecVM "Modules\TrainingGround\scripts\popup targets\Challenge3Medium.sqf"}]; 
Laptop8 addAction ["<t color='#FF8000'>Challenge - Hard</t>",{ExecVM "Modules\TrainingGround\scripts\popup targets\Challenge3Hard.sqf"}];
