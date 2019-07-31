config:
    availability:
        offering_npc: 194
    requirements:
        quests_completed:
        - "UnlockBlink"
        - "UnlockFlamebolt"
        permissions:
        - magicspells.learn.firenova
    rewards:
        money: 100
        quest_points: 3
messages:
    offer: "<darkgreen>Skilled Sorcerer<white>: The Fire Nova spell creates an expanding ring of fire around you to burn your foes. When you're ready to learn it, bring me what I need so that I can teach you."
    completion: "<darkgreen>Skilled Sorcerer<white>: Congratulations, you're ready to learn Fire Nova! Give it a try with <&dq>/cast firenova.<&dq>"
player_data:
    UnlockFireNova:
        name: Learn the Fire Nova spell
        description: "Bring reagents to the Skilled Sorcerer and learn the Fire Nova spell!"
        stages:
            1:
                description: "Bring magical reagents to the Skilled Sorcerer."
                objectives:
                    1:
                        name: "Deliver redstone"
                        progress: 0
                        total: 512
                    2:
                        name: "Deliver blaze rods"
                        progress: 0
                        total: 256
                    3:
                        name: "Deliver magma cream"
                        progress: 0
                        total: 256
                    4:
                        name: "Deliver gold ingots"
                        progress: 0
                        total: 256
            2:
                description: "Bring crystallized experience to the Skilled Sorcerer."
                objectives:
                    1:
                        name: "Deliver a billet of crystallized experience"
                        progress: 0
                        total: 1