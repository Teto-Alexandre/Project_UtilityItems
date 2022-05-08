# 今の状態を観測
    scoreboard players operation $temp ui_temp = $damage_indicator ui_world

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[ダメージインジケーター表示]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run scoreboard players set $damage_indicator ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"以後特殊ダメージを視覚的に表示します","color":"gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run scoreboard players set $damage_indicator ui_world 0
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"以後特殊ダメージを表示しません","color":"gray"}]