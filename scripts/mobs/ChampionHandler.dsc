ChampionHandler:
    type: world
    debug: false
    events:
        on server start:
        - wait 30s
        - flag server champion_spawner_avenfeld:0
        - flag server champion_recent_avenfeld:0
        - flag server champion_spawner_heavens:0
        - flag server champion_recent_heavens:0
        - flag server champion_spawner_prosperus_nether:0
        - flag server champion_recent_prosperus_nether:0
        - flag server champion_spawner_prosperus_the_end:0
        - flag server champion_recent_prosperus_the_end:0

        on entity killed by player in:avenfeld:
        - define world avenfeld
        # Veteran
        - if <context.entity.name.starts_with[<&9>]||null>:
            - flag server champion_spawner_<[world]>:+:1 duration:30m
            - announce to_console "Veteran killed in <[world]>, 1 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - else if <context.entity.name.starts_with[<&d>]||null>:
        # Elite
            - flag server champion_spawner_<[world]>:+:5 duration:30m
            - announce to_console "Elite killed in <[world]>, 5 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - if <server.has_flag[champion_spawner_<[world]>]> && <server.flag[champion_spawner_<[world]>]> >= 500 && !<server.flag[champion_recent_<[world]>]>:
            - announce to_console "Spawner flag is <server.flag[champion_spawner_<[world]>]>, setting to zero"
            - title "title:<yellow>CHAMPION SUMMONED" "subtitle:Prepare for battle!" fade_in:1s stay:2s fade_out:1s targets:<[world].players>
            - flag server champion_spawner_<[world]>:0
            - announce to_console "Champion summoning, server spawner flag is <server.flag[champion_spawner_<[world]>]>"
            - flag server champion_recent_<[world]>:1 duration:1h
            - define location <context.damager.location.find.surface_blocks.within[10].last>
            - strike no_damage <[location]>
            - random:
                - mythicspawn Umbra <[location].add[0,1,0]>
                - mythicspawn Toxus <[location].add[0,1,0]>
            - playeffect <[location]> effect:EXPLOSION_HUGE visibility:500 quantity:50 offset:2.0,2.0,2.0
            - playsound <[location]> sound:ENTITY_GENERIC_EXPLODE volume:1.0
        on entity killed by player in:heavens:
        - define world heavens
        # Veteran
        - if <context.entity.name.starts_with[<&9>]||null>:
            - flag server champion_spawner_<[world]>:+:1 duration:30m
            - announce to_console "Veteran killed in <[world]>, 1 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - else if <context.entity.name.starts_with[<&d>]||null>:
        # Elite
            - flag server champion_spawner_<[world]>:+:5 duration:30m
            - announce to_console "Elite killed in <[world]>, 5 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - if <server.has_flag[champion_spawner_<[world]>]> && <server.flag[champion_spawner_<[world]>]> >= 500 && !<server.flag[champion_recent_<[world]>]>:
            - announce to_console "Spawner flag is <server.flag[champion_spawner_<[world]>]>, setting to zero"
            - title "title:<yellow>CHAMPION SUMMONED" "subtitle:Prepare for battle!" fade_in:1s stay:2s fade_out:1s targets:<[world].players>
            - flag server champion_spawner_<[world]>:0
            - announce to_console "Champion summoning, server spawner flag is <server.flag[champion_spawner_<[world]>]>"
            - flag server champion_recent_<[world]>:1 duration:1h
            - define location <context.damager.location.find.surface_blocks.within[10].last>
            - strike no_damage <[location]>
            - random:
                - mythicspawn Umbra <[location].add[0,1,0]>
                - mythicspawn Toxus <[location].add[0,1,0]>
            - playeffect <[location]> effect:EXPLOSION_HUGE visibility:500 quantity:50 offset:2.0,2.0,2.0
            - playsound <[location]> sound:ENTITY_GENERIC_EXPLODE volume:1.0
        on entity killed by player in:prosperus_nether:
        - define world prosperus_nether
        # Veteran
        - if <context.entity.name.starts_with[<&9>]||null>:
            - flag server champion_spawner_<[world]>:+:1 duration:30m
            - announce to_console "Veteran killed in <[world]>, 1 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - else if <context.entity.name.starts_with[<&d>]||null>:
        # Elite
            - flag server champion_spawner_<[world]>:+:5 duration:30m
            - announce to_console "Elite killed in <[world]>, 5 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - if <server.has_flag[champion_spawner_<[world]>]> && <server.flag[champion_spawner_<[world]>]> >= 500 && !<server.flag[champion_recent_<[world]>]>:
            - announce to_console "Spawner flag is <server.flag[champion_spawner_<[world]>]>, setting to zero"
            - title "title:<yellow>CHAMPION SUMMONED" "subtitle:Prepare for battle!" fade_in:1s stay:2s fade_out:1s targets:<[world].players>
            - flag server champion_spawner_<[world]>:0
            - announce to_console "Champion summoning, server spawner flag is <server.flag[champion_spawner_<[world]>]>"
            - flag server champion_recent_<[world]>:1 duration:1h
            - define location <context.damager.location.find.surface_blocks.within[10].last>
            - strike no_damage <[location]>
            - random:
                - mythicspawn Umbra <[location].add[0,1,0]>
                - mythicspawn Toxus <[location].add[0,1,0]>
            - playeffect <[location]> effect:EXPLOSION_HUGE visibility:500 quantity:50 offset:2.0,2.0,2.0
            - playsound <[location]> sound:ENTITY_GENERIC_EXPLODE volume:1.0
        on entity killed by player in:prosperus_the_end:
        - define world prosperus_the_end
        # Veteran
        - if <context.entity.name.starts_with[<&9>]||null>:
            - flag server champion_spawner_<[world]>:+:1 duration:30m
            - announce to_console "Veteran killed in <[world]>, 1 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - else if <context.entity.name.starts_with[<&d>]||null>:
        # Elite
            - flag server champion_spawner_<[world]>:+:5 duration:30m
            - announce to_console "Elite killed in <[world]>, 5 added to champion spawner and total is <server.flag[champion_spawner_<[world]>]>, mob name was <context.entity.name>"
        - if <server.has_flag[champion_spawner_<[world]>]> && <server.flag[champion_spawner_<[world]>]> >= 500 && !<server.flag[champion_recent_<[world]>]>:
            - announce to_console "Spawner flag is <server.flag[champion_spawner_<[world]>]>, setting to zero"
            - title "title:<yellow>CHAMPION SUMMONED" "subtitle:Prepare for battle!" fade_in:1s stay:2s fade_out:1s targets:<[world].players>
            - flag server champion_spawner_<[world]>:0
            - announce to_console "Champion summoning, server spawner flag is <server.flag[champion_spawner_<[world]>]>"
            - flag server champion_recent_<[world]>:1 duration:1h
            - define location <context.damager.location.find.surface_blocks.within[10].last>
            - strike no_damage <[location]>
            - random:
                - mythicspawn Umbra <[location].add[0,1,0]>
                - mythicspawn Toxus <[location].add[0,1,0]>
            - playeffect <[location]> effect:EXPLOSION_HUGE visibility:500 quantity:50 offset:2.0,2.0,2.0
            - playsound <[location]> sound:ENTITY_GENERIC_EXPLODE volume:1.0
