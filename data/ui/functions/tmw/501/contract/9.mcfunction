# 
    tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[呪炎の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5 0

    execute as @e[type=!player,predicate=ui:load_unhurtable,sort=nearest,limit=1] run data merge entity @s {Fire:32767}
