# 
    scoreboard players set $gun.react ui_world 1

    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[銃反動の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]
    
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0