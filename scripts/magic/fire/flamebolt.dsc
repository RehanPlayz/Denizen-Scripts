Flamebolt_Power_Handler:
    type: world
    debug: true
    events:
        on magicspells player casts flamebolt:
        - define power 1
        - define fire_power <proc[Magic_Power_Handler].context[fire]>
        - if <[fire_power]> > 100:
            - define power <[fire_power].div[100].mul[1.2].add[power]>
        #- narrate "power <[power]>"
        - determine power:<[power]>