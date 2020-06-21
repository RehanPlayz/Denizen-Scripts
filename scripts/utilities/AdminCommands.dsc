AdminKitCommand:
    type: command
    name: adminkit
    usage: /adminkit
    description: Gives a kit of items for playtesting.
    permission: denizen.adminkit
    permission message: Not for you.
    script:
    - execute as_player "mm items get SkeletalDarkKnightSword"
    - execute as_player "mm items get SharpshooterBow"
    - execute as_player "mm items get AdminHelm"
    - execute as_player "mm items get AdminChest"
    - execute as_player "mm items get AdminLegs"
    - execute as_player "mm items get AdminBoots"
CombatKitCommand:
    type: command
    name: combatkit
    usage: /combatkit
    description: Gives a kit of items for playtesting.
    permission: denizen.combatkit
    permission message: Not for you.
    script:
    - inventory clear
    - equip <player> head:<mythic_item[AdminHelm]> chest:<mythic_item[AdminChest]> legs:<mythic_item[AdminLegs]> boots:<mythic_item[AdminBoots]> offhand:<mythic_item[BurnishedShield]>
    - give <mythic_item[SkeletalDarkKnightSword]>
    - give <mythic_item[SharpshooterBow]>
    - inventory set o:arrow[quantity=64] d:<player.inventory> slot:10
    - inventory set o:arrow[quantity=64] d:<player.inventory> slot:11
CombatBuffCommand:
    type: command
    name: combatbuff
    usage: /combatbuff
    description: Gives buffs for combat.
    permission: denien.combatbuff
    permission message: Not for you.
    script:
    - cast speed duration:1hr power:2 <player>
    - cast increase_damage duration:1hr power:2 <player>
    - cast regeneration duration:1hr power:2 <player>
    - cast fire_resistance duration:1hr power:1 <player>
BroadcastCommand:
    type: command
    name: broadcast
    description: Broadcasts a server-wide message from the Gods.
    usage: /broadcast Kneel, peasants!
    aliases:
    - bc
    permission: denizen.broadcast
    permission message: You dare try to wield the powers of the Gods?
    script:
    - announce "<red>The Gods speak<white>: <context.raw_args>"
NewCommand:
    type: command
    name: new
    usage: /new
    description: Clears inventory, gives axe and compass.
    permission: denizen.new
    permission message: You dare try to wield the powers of the Gods?
    script:
    - inventory clear
    - give wood_axe
    - give compass
PulpFictionBan1Command:
    type: command
    name: banpf-1
    usage: /banpf-1 <aqua>playername
    description: Asks a user if they read the Bible. If they respond yes, run banpf-2. From Pulp Fiction.
    permission: denizen.ban.pulpfiction
    permission message: You dare try to wield the powers of the Gods?
    script:
    - if <context.args.is_empty>:
        - narrate "<red>You forgot to specify a player!"
        - stop
    - announce "<red>The Gods speak<white>: Do you read the Bible, <context.args.get[1]>?"
    - narrate "<green>Now run <aqua>/banpf-2 <context.args.get[1]>"
PulpFictionBan2Command:
    type: command
    name: banpf-2
    usage: /banpf-2 <aqua>playername
    description: Finishes the Pulp Fiction script and bans the player.
    permission: denizen.ban.pulpfiction
    permission message: You dare try to wield the powers of the Gods?
    script:
    - if <context.args.is_empty>:
        - narrate "<red>You forgot to specify a player!"
        - stop
    - announce "<red>The Gods speak<white>: There's a passage I got memorized. Ezekiel 25:17."
    - wait 80t
    - announce "<red>The Gods speak<white>: <&dq>The path of the righteous man is beset on all sides by the inequities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of the darkness, for he is truly his brother's keeper and the finder of lost children."
    - wait 160t
    - announce "<red>The Gods speak<white>: And I will strike down upon thee WITH <&l><&o>GREAT VENGEANCE<&r> AND <&l><&o>FURIOUS ANGER<&r> THOSE WHO ATTEMPT TO POISON AND DESTROY MY BROTHERS. AND YOU WILL KNOW MY NAME IS <&l><&n><&o>THE LORD<&r> WHEN I LAY MY VENGEANCE <&l><&o>UPON<&r> THEE.<&dq>"
    - wait 80t
    - execute as_player "shock -k <context.args.get[1]>"
    - narrate "<green>Now ban the player."
FillSuperEnergy:
    type: command
    name: fillsuper
    usage: /fillsuper
    description: Immediately sets your Super energy to 299.
    permission: denizen.fillsuper
    permission message: You dare try to wield the powers of the Gods?
    script:
    - yaml id:super-counter set energy.<player.uuid>:299
    - narrate "<green>Super energy set to 299."