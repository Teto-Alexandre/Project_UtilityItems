# 今の状態を観測
    scoreboard players operation $temp ui_temp = $tmw237.hand ui_world

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[カラクラ複数持ち保持設定]","color":"gold"},{"text":"が起動されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run scoreboard players set $tmw237.hand ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 武器を入れ替えた際にペナルティが発生します","color":"gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run scoreboard players set $tmw237.hand ui_world 0
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 武器入れ替えに制限を設けません","color":"gray"}]