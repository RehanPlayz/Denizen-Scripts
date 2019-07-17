config:
    availability:
        offering_npc: 33
    requirements:
        quests_completed:
        - "HuntElites"
    rewards:
        money: 100
        quest_points: 3
messages:
    offer: "<darkgreen>Royal Geographer<white>: You seem to have a hungering for adventure, and your combat skills are nothing to scoff at. Go find the entrance to the Fire Temple - you may want to challenge the Temple someday, so you might as well visit the altar."
    completion: "<darkgreen>Royal Geographer<white>: Nice job reaching the altar! If you decide to challenge the Temple, may the Gods smile upon you."
player_data:
    FindFireTemple:
        name: Find the entrance to the Fire Temple
        description: "The Royal Geographer suggested that you go find the entrance to the Fire Temple. You might challenge it someday, so you might as well know where it is, right?"
        stages:
            1:
                description: "Reach the entrance to the Fire Temple"
                objectives:
                    1:
                        name: "Entrance reached"
                        progress: 0
                        total: 1