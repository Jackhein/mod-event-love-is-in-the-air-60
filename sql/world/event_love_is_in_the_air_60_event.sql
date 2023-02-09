-- Set Valentine Event Quests for level 60
UPDATE quest_template
    SET quest_template.QuestLevel = 60, quest_template.MinLevel = 55
    WHERE LogTitle = "Something is in the Air (and it Ain't Love)";
UPDATE quest_template
    SET quest_template.QuestLevel = 60, quest_template.MinLevel = 55
    WHERE LogTitle = "You've Been Served";