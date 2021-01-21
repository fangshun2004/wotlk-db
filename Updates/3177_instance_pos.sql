-- Script target
DELETE FROM spell_script_target WHERE entry IN (68788,69347,70464);
INSERT INTO spell_script_target VALUES
(68788,0,196485,0),
(69347,1,37584,0),
(69347,1,37588,0),
(69347,1,37587,0),
(69347,1,37496,0),
(69347,1,37497,0),
(69347,1,37498,0),
(70464,1,36796,0);

-- Fix equipment
DELETE FROM creature_equip_template WHERE entry=52515;
INSERT INTO creature_equip_template (entry, equipentry1) VALUES
(52515,49346);
UPDATE creature_template SET EquipmentTemplateId=52515 WHERE entry IN (36494,37613);

-- Fix creature
UPDATE creature_template SET faction=1771, MinLevel=80, MaxLevel=80, UnitFlags=UnitFlags|256 WHERE entry IN (36796,37657);