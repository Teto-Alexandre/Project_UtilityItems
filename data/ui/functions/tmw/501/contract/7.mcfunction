# 
    tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[経験の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0

    experience add @s 5 levels