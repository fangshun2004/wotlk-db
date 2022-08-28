-- q.12663 'Reunited'
-- q.12664 'Dark Horizon'

-- Gorebag 28666
UPDATE creature SET position_x = 6071.045, position_y = -2087.786, position_z = 422.9399, orientation = 6.055491 WHERE id = 28666;
UPDATE gossip_menu_option SET action_script_id = 973201 WHERE menu_id=9732;
UPDATE dbscripts_on_gossip SET id = 973201 WHERE id = 9732;
DELETE FROM dbscripts_on_gossip WHERE id = 973201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(973201,0,15,52194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Force Cast Summon Gargoyle'),
(973201,1,14,51966,0,0,0,0,2,0,0,0,0,0,0,0,0,0,'remove aura'),
(973201,2,14,52192,0,0,0,0,2,0,0,0,0,0,0,0,0,0,'remove aura'); -- in case if player will use veh again

-- Flying Fiend 28669
UPDATE creature_template SET UnitFlags = 33554440, MinLevel=79,MaxLevel=79, MinLevelHealth=12175, MaxLevelHealth=12175, MovementType = 3 WHERE entry=28669;
DELETE FROM creature_movement_template WHERE entry = 28669;
INSERT INTO creature_movement_template (entry, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28669,1,5967.444,-2165.715,422.854,100,0,0),
(28669,2,5865.666,-2174.974,393.3817,100,0,0),
(28669,3,5713.336,-2151.653,373.4649,100,0,0),
(28669,4,5558.722,-2128.131,366.1319,100,0,0),
(28669,5,5451.114,-2151.127,354.4373,100,0,0),
(28669,6,5377.812,-2219.117,359.1318,100,0,0),
(28669,7,5366.704,-2360.862,377.715,100,0,0),
(28669,8,5435.392,-2533.554,373.9926,100,0,0),
(28669,9,5620.228,-2725.159,344.5209,100,0,0),
(28669,10,5710.932,-2849.435,341.9651,100,0,0),
(28669,11,5793.25,-3015.15,364.3539,100,0,0),
(28669,12,5879.358,-3182.915,393.3817,100,0,0),
(28669,13,5964.949,-3300.001,393.3817,100,0,0),
(28669,14,6115.404,-3420.539,450.5761,100,0,0),
(28669,15,6211.264,-3582.169,481.242,100,0,0),
(28669,16,6279.312,-3777.027,504.3809,100,0,0),
(28669,17,6463.991,-3861.046,546.2137,100,0,0),
(28669,18,6575.966,-4030.918,546.2137,100,0,0),
(28669,19,6743.058,-4188.865,546.2137,100,0,0),
(28669,20,6896.725,-4247.418,577.3526,100,0,0),
(28669,21,6999.448,-4298.92,582.9353,100,0,0),
(28669,22,7100.701,-4416.983,611.0741,100,0,0),
(28669,23,7116.469,-4555.864,660.6572,100,0,0),
(28669,24,7057.505,-4669.796,675.6574,100,0,0),
(28669,25,6947.491,-4771.33,660.6572,100,0,0),
(28669,26,6758.396,-4783.884,626.5463,100,0,0),
(28669,27,6650.223,-4701.149,597.2407,100,0,0),
(28669,28,6627.306,-4597.556,586.0188,100,0,0),
(28669,29,6613.611,-4439.712,592.6573,100,0,0),
(28669,30,6526.06,-4289.037,568.1019,100,0,0),
(28669,31,6401.896,-4215.937,538.5742,100,0,0),
(28669,32,6286.808,-4191.781,518.3241,100,0,0),
(28669,33,6204.36,-4223.743,465.0742,100,0,0),
(28669,34,6134.582,-4239.067,386.1299,100,0,0),
(28669,35,5995.454,-4246.94,428.5185,100,0,0),
(28669,36,5909.651,-4251.924,428.5185,100,0,0),
(28669,37,5792.211,-4212.291,428.5185,100,0,0),
(28669,38,5656.491,-4115.374,428.5185,100,0,0),
(28669,39,5549.697,-3983.661,428.5185,100,0,0),
(28669,40,5495.661,-3853.954,428.5185,100,0,0),
(28669,41,5463.381,-3751.72,428.5185,100,0,0),
(28669,42,5430.445,-3669.375,428.5185,100,0,0),
(28669,43,5348.065,-3559.13,406.3796,100,0,0),
(28669,44,5240.038,-3418.709,381.4073,100,0,0),
(28669,45,5160.26,-3335.475,381.4073,100,0,0),
(28669,46,5044.02,-3214.565,381.4073,100,0,0),
(28669,47,4994.617,-3163.257,381.4073,100,0,0),
(28669,48,4929.424,-3062.172,381.4073,100,0,0),
(28669,49,4874.155,-2945.799,381.4073,100,0,0),
(28669,50,4892.917,-2768.813,381.4073,100,0,0),
(28669,51,5019.182,-2627.008,381.4073,100,0,0),
(28669,52,5067.444,-2519.115,381.4073,100,0,0),
(28669,53,5081.711,-2367.998,381.4073,100,0,0),
(28669,54,5152.338,-2120.359,419.4349,100,0,0),
(28669,55,5368.514,-1851.122,422.8514,100,0,0),
(28669,56,5660.992,-1784.473,360.5462,100,0,0),
(28669,57,5851.7,-1800.855,350.1305,100,0,0),
(28669,58,6030.714,-1863.997,348.1571,100,0,0),
(28669,59,6103.75,-1910.458,354.3242,100,0,0),
(28669,60,6163.79,-1944.525,374.379,100,0,0),
(28669,61,6183.492,-1976.164,410.129,100,0,0),
(28669,62,6184.051,-1991.26,417.3231,100,0,0),
(28669,63,6184.051,-1991.26,417.3231,100,0,0),
(28669,64,6184.051,-1991.26,417.3231,100,5000,2866901);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2866901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2866901,1,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'throw self event 5'),
(2866901,2,15,52220,0,0,0,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2866901,3,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'self cast'),
(2866901,4,15,52193,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player'),
(2866901,100,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'');

-- Overlord Drakuru 28717
-- missing added
DELETE FROM creature_addon WHERE guid IN (523381);
DELETE FROM creature_movement WHERE id IN (523381);
DELETE FROM game_event_creature WHERE guid IN (523381);
DELETE FROM game_event_creature_data WHERE guid IN (523381);
DELETE FROM creature_battleground WHERE guid IN (523381);
DELETE FROM creature_linking WHERE guid IN (523381)
 OR master_guid IN (523381);
DELETE FROM creature WHERE guid IN (523381);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(523381,28717,571,1,1,0,0,5954.766,-3273.196,406.9324,5.445427,300,300,0,0,0,0,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 28717;
-- texts corrected
UPDATE `broadcast_text` SET `ChatTypeID` = 4 WHERE `Id` IN (28691,28700,28708,28701,28709,29281,29291,29292,29293); -- whisper