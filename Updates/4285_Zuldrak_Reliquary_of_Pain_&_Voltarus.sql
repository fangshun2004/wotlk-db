-- Reliquary of Pain & Voltarus - Zul'Drak

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (523327,523240);
DELETE FROM creature_movement WHERE id IN (523327,523240);
DELETE FROM game_event_creature WHERE guid IN (523327,523240);
DELETE FROM game_event_creature_data WHERE guid IN (523327,523240);
DELETE FROM creature_battleground WHERE guid IN (523327,523240);
DELETE FROM creature_linking WHERE guid IN (523327,523240)
 OR master_guid IN (523327,523240);
DELETE FROM creature WHERE guid IN (523327,523240);

-- teleport corrected 
UPDATE areatrigger_teleport SET target_position_x = 6165.63, target_position_y = -2001.19, target_position_z = 408.168, target_orientation = 2.32628 WHERE id = 5051;

-- misc updates
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (523148,523147,523388,523369,523371,523377,523358,523357,523384,523386);
UPDATE creature SET position_x = 6178.209961, position_y = -2159.623779, position_z = 236.212494 WHERE guid = 523241;
UPDATE creature SET position_x = 6193.580566, position_y = -2182.903320, position_z = 235.417023, orientation = 4.308897 WHERE guid = 523562;
UPDATE creature SET position_x = 6086.935547, position_y = -2197.142822, position_z = 235.065521, orientation = 4.308897 WHERE guid = 523550;

-- Flying Fiend 28759
UPDATE creature SET spawndist = 15 WHERE MovementType = 1 AND id = 28759;

-- Overlord Drakuru 28503
UPDATE creature_template_addon SET auras = 58837 WHERE entry = 28503;

-- Blight Geist 28750
-- missing added
DELETE FROM creature_addon WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM creature_movement WHERE id IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM game_event_creature WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM game_event_creature_data WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM creature_battleground WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM creature_linking WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670)
 OR master_guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
DELETE FROM creature WHERE guid IN (518612,518618,518622,518624,518631,518644,518654,518670);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518612,28750,571,1,1,0,0,6229.31,-1955.28,235.353,6.13546,300,300,10,0,0,0,0,1),
(518618,28750,571,1,1,0,0,6180.946,-2069.294,461.3016,2.5,300,300,0,0,0,0,0,2),
(518622,28750,571,1,1,0,0,6208.19,-2093.6,235.749,1.4909,300,300,10,0,0,0,0,1),
(518624,28750,571,1,1,0,0,6244.93,-2048.757,235.0224,3,300,300,10,0,0,0,0,1),
(518631,28750,571,1,1,0,0,6105.38,-2104.071,235.4882,0.45,300,300,10,0,0,0,0,1),
(518644,28750,571,1,1,0,0,6156.968,-1941.536,235.3708,4.3353,300,300,10,0,0,0,0,1),
(518654,28750,571,1,1,0,0,6229.04,-1993.81,582.818,3.59183,300,300,5,0,0,0,0,1),
(518670,28750,571,1,1,0,0,6229.91,-2019.15,233.135,3.12452,300,300,10,0,0,0,0,1);
-- updates
UPDATE creature SET position_x = 6216.245, position_y = -1983.85, position_z = 461.3086, orientation = 0.29, MovementType = 2, spawndist = 0 WHERE guid = 523310;
UPDATE creature SET position_x = 6096.561, position_y = -2069.695, position_z = 484.7817, orientation = 4.258604, MovementType = 2, spawndist = 0 WHERE guid = 523311;
UPDATE creature SET position_x = 6207.229, position_y = -2055.466, position_z = 461.3049, orientation = 5.462881, MovementType = 2, spawndist = 0 WHERE guid = 523319;
UPDATE creature SET position_x = 6096.954, position_y = -2058.171, position_z = 484.7817, orientation = 4.537856, MovementType = 2, spawndist = 0 WHERE guid = 523320;
UPDATE creature SET position_x = 6102.063, position_y = -2071.464, position_z = 484.7817, orientation = 3.420845, MovementType = 2, spawndist = 0 WHERE guid = 523321;
UPDATE creature SET position_x = 6175.339, position_y = -2017.852, position_z = 404.3061, orientation = 5.183628, MovementType = 2, spawndist = 0 WHERE guid = 523323;
UPDATE creature SET position_x = 6145.376, position_y = -1976.752, position_z = 461.3064, orientation = 1.8, MovementType = 2, spawndist = 0 WHERE guid = 523328;
UPDATE creature SET position_x = 6153.143, position_y = -1972.857, position_z = 461.3064, orientation = 2.443461, MovementType = 2, spawndist = 0 WHERE guid = 523329;
UPDATE creature SET position_x = 6103.717, position_y = -2074.078, position_z = 484.7817, MovementType = 2, spawndist = 0 WHERE guid = 523330;
UPDATE creature SET position_x = 6175.746, position_y = -2017.538, position_z = 404.236, orientation = 5.253795, MovementType = 2, spawndist = 0 WHERE guid = 523331;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 523308;
DELETE FROM `creature_movement` WHERE `id` IN (518618,523308,523310,523311,523319,523320,523321,523323,523328,523329,523330,523331);
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 523320
(523320,1,6096.954,-2058.171,484.7817,100,5000,2875001),
(523320,2,6102.639,-2062.564,484.7817,100,0,0),
(523320,3,6114.107,-2064.986,484.7817,100,0,0),
(523320,4,6126.729,-2057.026,484.7817,100,0,0),
(523320,5,6134.058,-2050.583,484.7817,100,100,2875003),
(523320,6,6145.58,-2043.94,460.482,100,0,0),
(523320,7,6160.958,-2050.992,459.5475,100,0,0),
(523320,8,6195.914,-2054.68,461.2656,100,0,0),
(523320,9,6204.502,-2061.344,461.3019,100,4000,2875002),
(523320,10,6200.651,-2058.777,461.3053,100,0,0),
(523320,11,6198.137,-2050.744,460.4676,100,100,2875004),
(523320,12,6201.31,-2063.65,484.782,100,0,0),
(523320,13,6203.393,-2073.318,485.2986,100,0,0),
(523320,14,6192.946,-2089.657,484.8155,100,0,0),
(523320,15,6168.724,-2103.914,484.8969,100,0,0),
(523320,16,6149.02,-2100.704,484.8766,100,0,0),
(523320,17,6132.68,-2071.999,484.913,100,0,0),
(523320,18,6104.417,-2062.745,484.7817,100,0,0),
-- 523330
(523330,1,6103.717,-2074.078,484.7817,100,5000,2875001),
(523330,2,6104.233,-2073.885,484.7817,100,0,0),
(523330,3,6120.644,-2064.324,484.7817,100,0,0),
(523330,4,6133.346,-2050.999,484.7817,100,100,2875005),
(523330,5,6142.8,-2043.88,461.047,100,0,0),
(523330,6,6140.736,-2045.231,461.3025,100,0,0),
(523330,7,6135.557,-2050.103,461.308,100,0,0),
(523330,8,6135.002,-2051.003,461.3075,3.769911,4000,2875002),
(523330,9,6135.974,-2050.088,461.3077,100,0,0),
(523330,10,6143.583,-2043.72,460.8497,100,100,2875006),
(523330,11,6133.96,-2049.89,484.782,100,0,0),
(523330,12,6131.798,-2051.007,484.7817,100,0,0),
(523330,13,6119.639,-2063.725,484.7817,100,0,0),
-- 523321
(523321,1,6102.063,-2071.464,484.7817,3.420845,5000,2875001),
(523321,2,6105.871,-2070.168,484.7817,100,0,0),
(523321,3,6128.855,-2044.362,484.7817,100,100,2875007),
(523321,4,6145.21,-2032.92,459.595,100,0,0),
(523321,5,6135.049,-2044.34,461.3044,100,4000,2875002),
(523321,6,6135.464,-2042.909,461.3037,100,0,0),
(523321,7,6143.42,-2034.777,459.4195,100,100,2875008),
(523321,8,6129.63,-2044.65,484.782,100,0,0),
(523321,9,6125.625,-2045.859,484.7817,100,0,0),
(523321,10,6104.16,-2069.53,484.7817,100,0,0),
-- 523319
(523319,1,6207.229,-2055.466,461.3049,5.462881,4000,2875002),
(523319,2,6206.599,-2054.509,461.3044,100,100,2875009),
(523319,3,6208,-2058.57,484.782,100,0,0),
(523319,4,6189.805,-2089.697,484.8336,100,0,0),
(523319,5,6160.006,-2104.732,485.083,100,0,0),
(523319,6,6139.154,-2086.768,484.9025,100,0,0),
(523319,7,6132.434,-2078.024,484.7912,100,0,0),
(523319,8,6095.261,-2062.664,484.7817,100,5000,2875001),
(523319,9,6124.279,-2062.609,484.7817,100,0,0),
(523319,10,6150.968,-2100.501,484.9111,100,0,0),
(523319,11,6176.275,-2103.082,484.8475,100,0,0),
(523319,12,6212.174,-2076.243,484.7817,100,0,0),
(523319,13,6209.133,-2059.37,484.8055,100,100,2875010),
(523319,14,6203.4,-2050.4,461.301,100,0,0),
-- 523328
(523328,1,6145.376,-1976.752,461.3064,1.8,4000,2875002),
(523328,2,6151.593,-1987.446,460.0117,100,100,2875011),
(523328,3,6142.43,-1976.5,484.782,100,0,0),
(523328,4,6121.274,-1968.876,484.7817,100,0,0),
(523328,5,6087.102,-1999.643,485.1085,100,0,0),
(523328,6,6109.737,-2040.311,484.8922,100,0,0),
(523328,7,6101.238,-2062.686,484.7817,100,0,0),
(523328,8,6097.889,-2065.833,484.7817,2.949606,5000,2875001),
(523328,9,6102.794,-2061.792,484.7817,100,0,0),
(523328,10,6103.527,-2030.95,484.8754,100,0,0),
(523328,11,6106.448,-2034.126,484.8909,100,0,0),
(523328,12,6091.571,-1991.617,484.8744,100,0,0),
(523328,13,6131.798,-1969.818,484.7817,100,0,0),
(523328,14,6142.792,-1975.699,484.7817,100,100,2875012),
(523328,15,6149.36,-1987.29,461.106,100,0,0),
(523328,16,6147.682,-1985.624,461.2195,100,0,0),
-- 523310
(523310,1,6216.245,-1983.85,461.3086,0.29,4000,2875002),
(523310,2,6215.966,-1985,461.3082,100,0,0),
(523310,3,6209.135,-1989.806,461.3023,100,100,2875013),
(523310,4,6216.1,-1984.29,484.805,100,0,0),
(523310,5,6220.96,-1981.595,484.7817,100,0,0),
(523310,6,6221.505,-1958.653,484.8376,100,0,0),
(523310,7,6196.143,-1931.549,485.0707,100,0,0),
(523310,8,6165.633,-1939.432,484.8564,100,0,0),
(523310,9,6131.097,-1971.888,484.7817,100,0,0),
(523310,10,6097.321,-1986.901,484.9024,100,0,0),
(523310,11,6088.803,-2011.928,484.8889,100,0,0),
(523310,12,6106.403,-2034.999,484.8852,100,0,0),
(523310,13,6115.521,-2053.154,484.7817,100,0,0),
(523310,14,6104.145,-2073.252,484.7817,100,5000,2875001),
(523310,15,6105.924,-2070.469,484.7817,100,0,0),
(523310,16,6111.913,-2050.842,484.7817,100,0,0),
(523310,17,6109.091,-2037.07,484.9039,100,0,0),
(523310,18,6087.542,-2002.893,485.0814,100,0,0),
(523310,19,6104.542,-1981.744,484.8942,100,0,0),
(523310,20,6136.808,-1962.796,484.7817,100,0,0),
(523310,21,6177.643,-1934.396,484.8965,100,0,0),
(523310,22,6199.864,-1932.9,484.8879,100,0,0),
(523310,23,6223.991,-1967.172,484.7817,100,0,0),
(523310,24,6217.285,-1985.127,484.7817,100,100,2875014),
(523310,25,6210.92,-1988.77,461.301,100,0,0),
-- 523311
(523311,1,6096.561,-2069.695,484.7817,4.258604,5000,2875001),
(523311,2,6098.649,-2068.789,484.7817,100,0,0),
(523311,3,6131.748,-2069.752,484.9228,100,0,0),
(523311,4,6154.401,-2103.999,485.0734,100,0,0),
(523311,5,6177.845,-2100.021,484.8671,100,0,0),
(523311,6,6202.315,-2080.404,484.7817,100,0,0),
(523311,7,6238.914,-2055.347,484.8289,100,0,0),
(523311,8,6264.894,-2032.98,485.0973,100,0,0),
(523311,9,6240.11,-1989.695,484.7817,100,0,0),
(523311,10,6219.558,-1989.167,484.7817,100,100,2875015),
(523311,11,6216.58,-1994.89,461.301,100,0,0),
(523311,12,6217.393,-1995.394,461.3011,100,0,0),
(523311,13,6220.092,-1992.092,461.3055,100,4000,2875002),
(523311,14,6217.936,-1994.459,461.304,100,0,0),
(523311,15,6214.306,-1998.342,461.3011,100,100,2875016),
(523311,16,6220.59,-1991.16,484.782,100,0,0),
(523311,17,6224.806,-1988.395,484.7817,100,0,0),
(523311,18,6239.807,-1987.941,484.7817,100,0,0),
(523311,19,6262.548,-2016.587,484.8281,100,0,0),
(523311,20,6264.932,-2034.561,485.1096,100,0,0),
(523311,21,6237.587,-2056.088,484.825,100,0,0),
(523311,22,6197.29,-2085.351,484.8394,100,0,0),
(523311,23,6174.648,-2098.688,484.9054,100,0,0),
(523311,24,6153.57,-2105.083,485.079,100,0,0),
(523311,25,6128.51,-2071.43,484.869,100,0,0),
(523311,26,6099.242,-2068.432,484.7817,100,0,0),
-- 523308
(523308,1,6202.187,-1970.115,461.3024,100,10000,2875017),
(523308,2,6201.38,-1978.847,461.3046,100,0,0),
(523308,3,6209.28,-2000.035,460.0739,100,0,0),
(523308,4,6214.661,-2015.922,460.4588,100,0,0),
(523308,5,6239.679,-2017.56,461.3075,100,10000,2875017),
(523308,6,6237.306,-2016.886,461.3065,100,0,0),
(523308,7,6214.472,-2024.857,460.3615,100,0,0),
(523308,8,6197.676,-2048.26,459.8561,100,0,0),
(523308,9,6175.999,-2055.235,459.9492,100,0,0),
(523308,10,6154.833,-2065.599,461.3018,100,0,0),
(523308,11,6148.998,-2064.746,461.3022,3.926991,10000,2875017),
(523308,12,6157.799,-2050.602,459.7967,100,0,0),
(523308,13,6141.865,-2026.469,458.8951,100,0,0),
(523308,14,6153.972,-1989.413,459.0964,100,0,0),
(523308,15,6192.825,-1983.243,460.1299,100,0,0),
(523308,16,6202.187,-1970.115,461.3024,100,10000,2875017),
-- 523329
(523329,1,6153.143,-1972.857,461.3064,2.443461,4000,2875002),
(523329,2,6155.889,-1979.479,461.3008,100,100,2875018),
(523329,3,6148.62,-1972.31,484.782,100,0,0),
(523329,4,6147.761,-1970.542,484.7817,100,0,0),
(523329,5,6123.947,-1971.441,484.8794,100,0,0),
(523329,6,6091.209,-1992.603,484.8875,100,0,0),
(523329,7,6094.241,-2022.884,484.861,100,0,0),
(523329,8,6112.295,-2043.476,484.7817,100,0,0),
(523329,9,6096.86,-2063.195,484.7817,100,5000,2875001),
(523329,10,6101.426,-2056.165,484.7817,100,0,0),
(523329,11,6109.021,-2035.91,484.91,100,0,0),
(523329,12,6095.607,-2019.88,484.8982,100,0,0),
(523329,13,6089.913,-1998.964,485.0818,100,0,0),
(523329,14,6112.426,-1979.793,484.8416,100,0,0),
(523329,15,6122.738,-1971.012,484.8647,100,0,0),
(523329,16,6149.742,-1970.906,484.8015,100,100,2875019),
(523329,17,6157.35,-1978.18,461.301,100,0,0),
-- 523323
(523323,1,6175.339,-2017.852,404.3061,5.183628,5000,2875020),
(523323,2,6174.825,-2017.989,404.236,100,0,0),
(523323,3,6159.251,-2028.207,408.1678,100,0,0),
(523323,4,6147.937,-2036.359,407.5794,100,0,0),
(523323,5,6128.837,-2048.8,417.705,100,0,0),
(523323,6,6113.036,-2034.328,417.6899,100,0,0),
(523323,7,6110.188,-2012.259,417.561,100,0,0),
(523323,8,6121.923,-1981.482,417.7074,100,0,0),
(523323,9,6157.049,-1955.435,417.646,100,0,0),
(523323,10,6195.462,-1956.147,417.5861,100,0,0),
(523323,11,6220.22,-1969.142,417.5392,100,0,0),
(523323,12,6222.109,-1986.473,417.7545,100,0,0),
(523323,13,6202.199,-1999.047,407.519,100,0,0),
(523323,14,6181.367,-1996.621,408.1674,100,0,0),
(523323,15,6176.836,-2007.704,411.9513,100,0,0),
(523323,16,6175.211,-2017.723,411.9658,100,5000,2875021),
-- 523331
(523331,1,6175.746,-2017.538,404.236,5.253795,5000,2875020),
(523331,2,6187.132,-2035.369,408.1675,100,0,0),
(523331,3,6193.911,-2045.414,407.6693,100,0,0),
(523331,4,6206.336,-2064.349,417.7517,100,0,0),
(523331,5,6193.142,-2079.947,417.6424,100,0,0),
(523331,6,6165.127,-2083.964,417.5635,100,0,0),
(523331,7,6130.759,-2063.642,417.5378,100,0,0),
(523331,8,6110.855,-2026.194,417.5486,100,0,0),
(523331,9,6119.569,-1984.052,417.7385,100,0,0),
(523331,10,6142.086,-1970.576,417.5637,100,0,0),
(523331,11,6157.363,-1988.833,407.9571,100,0,0),
(523331,12,6177.159,-2007.708,411.4003,100,0,0),
(523331,13,6175.44,-2017.496,411.9658,100,5000,2875021),
-- 518618
(518618,1,6180.946,-2069.294,461.3016,100,0,0),
(518618,2,6187.383,-2053.935,460.1047,100,0,0),
(518618,3,6213.616,-2022.851,460.1382,100,0,0),
(518618,4,6223.986,-2010.038,461.3042,100,10000,2875017),
(518618,5,6222.961,-2012.53,461.3032,100,0,0),
(518618,6,6217.03,-2007.837,461.3011,100,0,0),
(518618,7,6201.745,-1990.675,459.9401,100,0,0),
(518618,8,6194.818,-1987.884,459.0783,100,0,0),
(518618,9,6168.517,-1968.149,461.3006,100,10000,2875017),
(518618,10,6164.962,-1981.309,459.8275,100,0,0),
(518618,11,6141.244,-2018.656,458.8197,100,0,0),
(518618,12,6129.486,-2024.879,461.3,100,10000,2875017),
(518618,13,6141.167,-2028.424,459.311,100,0,0),
(518618,14,6174.528,-2055.624,460.063,100,0,0),
(518618,15,6184.06,-2078.227,461.3071,100,10000,2875017);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2875001 AND 2875021;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(2875001,0,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875001,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875001,2000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875002,0,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875002,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875002,2000,14,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'remove aura'),
(2875003,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6145.58,-2043.94,460.482,100,20,'523320 - jump down'),
(2875004,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6201.31,-2063.65,484.782,100,20,'523320 - jump up'),
(2875005,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6142.8,-2043.88,461.047,100,20,'523330 - jump down'),
(2875006,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6133.96,-2049.89,484.782,100,20,'523330 - jump up'),
(2875007,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6145.21,-2032.92,459.595,100,20,'523321 - jump down'),
(2875008,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6129.63,-2044.65,484.782,100,20,'523321 - jump up'),
(2875009,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6208,-2058.57,484.782,100,20,'523319 - jump up'),
(2875010,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6203.4,-2050.4,461.301,100,20,'523319 - jump down'),
(2875011,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6142.43,-1976.5,484.782,100,20,'523328 - jump up'),
(2875012,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6149.36,-1987.29,461.106,100,20,'523328 - jump down'),
(2875013,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6216.1,-1984.29,484.805,100,20,'523310 - jump up'),
(2875014,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6210.92,-1988.77,461.301,100,20,'523310 - jump down'),
(2875015,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6216.58,-1994.89,461.301,100,20,'523311 - jump down'),
(2875016,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6220.59,-1991.16,484.782,100,20,'523311 - jump up'),
(2875017,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2875017,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875017,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'emote'),
(2875018,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6148.62,-1972.31,484.782,100,20,'523329 - jump up'),
(2875019,0,20,15,0,0,0,0,0x04,0,0,0,0,10,6157.35,-1978.18,461.301,100,20,'523329 - jump down'),
(2875020,100,15,61456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875020,2000,15,52243,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875021,100,15,61456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2875021,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'despawn self');

-- Blightblood Troll 28931
-- missing added
DELETE FROM creature_addon WHERE guid IN (523327);
DELETE FROM creature_movement WHERE id IN (523327);
DELETE FROM game_event_creature WHERE guid IN (523327);
DELETE FROM game_event_creature_data WHERE guid IN (523327);
DELETE FROM creature_battleground WHERE guid IN (523327);
DELETE FROM creature_linking WHERE guid IN (523327)
 OR master_guid IN (523327);
DELETE FROM creature WHERE guid IN (523327);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(523327,28931,571,1,1,0,0,6221.196,-1986.499,461.3846,3.787364,300,300,0,0,0,0,0,0);

-- Blight Effect Bunny 28932
-- missing added
DELETE FROM creature_addon WHERE guid IN (523816,519065,519068);
DELETE FROM creature_movement WHERE id IN (523816,519065,519068);
DELETE FROM game_event_creature WHERE guid IN (523816,519065,519068);
DELETE FROM game_event_creature_data WHERE guid IN (523816,519065,519068);
DELETE FROM creature_battleground WHERE guid IN (523816,519065,519068);
DELETE FROM creature_linking WHERE guid IN (523816,519065,519068)
 OR master_guid IN (523816,519065,519068);
DELETE FROM creature WHERE guid IN (523816,519065,519068);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(523816,28932,571,1,1,0,0,6143.005,-1973.705,482.0665,4.520403,300,300,0,0,4979,0,0,0), -- redone
(519065,28932,571,1,1,0,0,6218.721,-1985.633,482.0804,4.39823,300,300,0,0,4979,0,0,0),
(519068,28932,571,1,1,0,0,6221.371,-1989.219,482.0665,1.500983,300,300,0,0,4979,0,0,0);
DELETE FROM creature_spawn_data WHERE guid IN(523816,523817,523818,523815,523819,523820,519065,519068);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(523816, 20008),(523815, 20007),
(523817, 20008),(523818, 20007),
(523819, 20008),(523820, 20007),
(519065, 20008),(519068, 20007);
DELETE FROM creature_spawn_data_template WHERE entry IN (20007,20008);
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES 
(20007, 20610),
(20008, 20611);
DELETE FROM dbscripts_on_relay WHERE id IN (20610,20611);
INSERT INTO dbscripts_on_relay(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(20610,10,15,52686,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast'),
(20611,10,15,52681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,'self cast');

-- Scourge Cage 190803
DELETE FROM gameobject WHERE guid IN (507271,507366,520489,520953);
INSERT INTO gameobject (`guid`, `id`, `map`, `spawnMask`, `phasemask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(507271,190803,571,1,1,6232.611,-2008.946,461.3012,-2.879789,0,0,-0.9914446,0.1305283,180,180,255,1),
(507366,190803,571,1,1,6241.91,-2020.455,461.3012,-2.33874,0,0,-0.9205046,0.3907318,180,180,255,1),
(520489,190803,571,1,1,6257.377,-1980.123,417.5995,-3.106654,0,0,-0.9998474,0.01746928,180,180,255,1),
(520953,190803,571,1,1,6240.779,-1967.289,417.6864,-2.478367,0,0,-0.9455185,0.3255684,180,180,255,1);

-- Captured Drakkari Chieftain 28888
-- missing added
DELETE FROM creature_addon WHERE guid IN (519279,523023,523030,523046);
DELETE FROM creature_movement WHERE id IN (519279,523023,523030,523046);
DELETE FROM game_event_creature WHERE guid IN (519279,523023,523030,523046);
DELETE FROM game_event_creature_data WHERE guid IN (519279,523023,523030,523046);
DELETE FROM creature_battleground WHERE guid IN (519279,523023,523030,523046);
DELETE FROM creature_linking WHERE guid IN (519279,523023,523030,523046)
 OR master_guid IN (519279,523023,523030,523046);
DELETE FROM creature WHERE guid IN (519279,523023,523030,523046);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(519279,28888,571,1,1,0,0,6242.198,-2020.377,462.2179,3.228859,300,300,0,0,0,0,0,0),
(523023,28888,571,1,1,0,0,6233.554,-2008.548,462.2596,3.298672,300,300,0,0,0,0,0,0),
(523030,28888,571,1,1,0,0,6240.744,-1967.356,418.6794,3.804818,300,300,0,0,0,0,0,0),
(523046,28888,571,1,1,0,0,6257.495,-1980.1,418.6335,3.054326,300,300,0,0,0,0,0,0);

-- Shalewing 28879
UPDATE creature_template SET MovementType = 3 WHERE entry IN (28879);
UPDATE creature SET spawndist = 0, MovementType = 3 WHERE id = 28879;
DELETE FROM creature_movement_template WHERE entry IN (28879);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28879,0,1,6172.321,-2047.748,423.9775,100,0,0),
(28879,0,2,6159.705,-2039.765,423.9775,100,0,0),
(28879,0,3,6151.034,-2030.29,423.9775,100,0,0),
(28879,0,4,6148.249,-2012.318,427.6442,100,0,0),
(28879,0,5,6160.55,-1991.355,423.9775,100,0,0),
(28879,0,6,6184.199,-1985.717,434.6442,100,0,0),
(28879,0,7,6205.602,-1997.712,423.9775,100,0,0),
(28879,0,8,6209.002,-2021.652,426.0051,100,0,0),
(28879,0,9,6191.328,-2043.418,431.6164,100,0,0),
(28879,0,10,6172.321,-2047.748,423.9775,100,0,0),
(28879,0,11,6159.705,-2039.765,423.9775,100,0,0),
(28879,0,12,6151.034,-2030.29,423.9775,100,0,0);

-- Drakuru's Guard 28803
UPDATE creature SET position_x = 6113.512, position_y = -2033.001, position_z = 417.7308 WHERE guid = 523519;
UPDATE creature SET MovementType = 4, spawndist = 0 WHERE guid IN (523519,523520,523518,523521);
DELETE FROM `creature_movement` WHERE `id` IN (523519,523520,523518,523521);
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 523519
(523519,1,6113.512,-2033.001,417.7308,100,0,0),
(523519,2,6109.752,-2008.77,417.5635,100,0,0),
(523519,3,6119.171,-1985.926,417.671,100,0,0),
-- 523520
(523520,1,6164.512,-1955.177,417.5476,100,0,0),
(523520,2,6174.948,-1953.596,417.5555,100,0,0),
(523520,3,6196.992,-1955.543,417.5923,100,0,0),
(523520,4,6215.869,-1967.486,417.5413,100,0,0),
(523520,5,6228.093,-1980.412,417.5516,100,0,0),
(523520,6,6236.967,-1995.491,417.6685,100,0,0),
-- 523518 
(523518,1,6194.729,-2078.011,417.6379,100,0,0),
(523518,2,6217.196,-2064.708,417.5335,100,0,0),
(523518,3,6232.834,-2048.468,417.6587,100,0,0),
(523518,4,6240.251,-2020.826,417.5594,100,0,0),
(523518,5,6238.296,-2002.501,417.7483,100,0,0),
-- 523521
(523521,1,6144.443,-2073.784,417.665,100,0,0),
(523521,2,6129.907,-2060.738,417.5427,100,0,0),
(523521,3,6114.339,-2034.41,417.6801,100,0,0),
(523521,4,6171.715,-2080.903,417.5587,100,0,0),
(523521,5,6185.524,-2080.392,417.5478,100,0,0);