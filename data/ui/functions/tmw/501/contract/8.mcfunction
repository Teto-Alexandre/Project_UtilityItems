# 
    tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[地震の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    particle block dirt ~ ~0.1 ~ 8 0.1 8 0 100 force
    playsound entity.wither.hurt player @a ~ ~ ~ 1 0.8 0

    execute as @e[type=!#ui:notmob] run data merge entity @s {FallDistance:50}
