# 
    scoreboard players set $skilltree ui_world 1

    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[スキルツリーの契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 以後真上を向くことでスキルツリーを取得できます","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0

    gamerule sendCommandFeedback false