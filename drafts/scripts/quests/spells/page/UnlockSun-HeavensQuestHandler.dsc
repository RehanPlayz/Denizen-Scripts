UnlockSun-HeavensQuestDeliveryHandler:
    type: task
    debug: false
    script:
    - define stage:1
    - define quest_internalname:UnlockSun-Heavens
    - choose <player.item_in_hand.material.name>:
        - case redstone:
            - define objective:1
        - case gold_ingot:
            - define objective:2
        - case default:
            - narrate format:StoicSageFormat "Whenever you've got the items I'm looking for, just hand them over."
            - run QuestProgressHandler def:UnlockSun-Heavens
            - stop
    - inject QuestItemDeliveryHandler
    - if <[InProgress]>:
        - narrate format:StoicSageFormat <proc[ItemDescriptionHandler_Spells].context[<[delivery_item]>]>
        
UnlockSun-HeavensCompletion:
    type: task
    debug: false
    script:
    - execute as_server "cast teach <player.name> Sun-Heavens"
