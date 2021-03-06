"Player Death Logger":
    type: world
    debug: false
    events:
        on player dies:
        - announce to_console "<player.name> died, dObject <player>"
        - announce to_console "Player had <player.xp.level> levels and <player.xp.total> total XP"
        - announce to_console "<player> had the following inventory:"
        - announce to_console <context.inventory.list_contents.unescaped>
        - announce to_console "<player> inventory escaped:"
        - announce to_console <context.inventory.list_contents>