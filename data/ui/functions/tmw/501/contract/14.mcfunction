# 
    scoreboard players reset $gun.break ui_world

    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[銃破壊の解約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0