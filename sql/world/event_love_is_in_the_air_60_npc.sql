-- Set Valentine Event NPC for level 60
UPDATE creature_template SET creature_template.minlevel = 60, creature_template.maxlevel = 60
                         WHERE name = 'Crazed Apothecary';
UPDATE creature_template SET creature_template.minlevel = 62, creature_template.maxlevel = 62, creature_template.HealthModifier = 7, creature_template.DamageModifier = 2
                         WHERE entry = 36272 OR entry = 36296 OR entry = 36565;

-- Reset Valentine loot table for Hummel 60
UPDATE creature_loot_template SET Chance = 50 WHERE reference = 50011;
UPDATE creature_loot_template SET Chance = 100 WHERE item = 50320;
UPDATE creature_loot_template SET Chance = 100 WHERE item = 49641;
UPDATE creature_loot_template SET Reference = 0, Item = 51995 WHERE Reference = 50010 AND Item = 1;
UPDATE reference_loot_template SET Item = 60000 WHERE Item = 50741;