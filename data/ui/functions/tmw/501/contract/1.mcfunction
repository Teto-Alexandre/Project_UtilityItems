# 今の状態を観測
    scoreboard players operation $temp ui_temp = $skilltree ui_world

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[スキルツリーの契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run scoreboard players set $skilltree ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 以後真上を向くことでスキルツリーを取得できます","color":"gray"}]
    execute if score $temp ui_temp matches 0 run gamerule sendCommandFeedback false

# 無効化
    execute if score $temp ui_temp matches 1 run scoreboard players set $skilltree ui_world 0
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> スキルツリーは無効化されます","color":"gray"}]
    execute if score $temp ui_temp matches 1 run gamerule sendCommandFeedback true