# 
    scoreboard players set $bullettime ui_world 5

    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[刹那の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]
    
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0

    tag @e[type=!player,type=!#ui:notmob,sort=nearest,limit=1,nbt=!{NoAI:1b}] add ui_timestop
    execute as @e[tag=ui_timestop] run data merge entity @s {NoAI:1b}
    execute at @e[tag=ui_timestop] run particle enchanted_hit ~ ~1 ~ 0.3 0.6 0.3 1 10