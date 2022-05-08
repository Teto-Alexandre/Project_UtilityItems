# 今の状態を観測
    scoreboard players operation $temp ui_temp = $weather_cycle ui_world

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[上天の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run scoreboard players set $weather_cycle ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 環境サイクルを停止・デバッグ化します","color":"gray"}]
    execute if score $temp ui_temp matches 0 run gamerule doDaylightCycle false
    execute if score $temp ui_temp matches 0 run time set noon
    execute if score $temp ui_temp matches 0 run gamerule doWeatherCycle false
    execute if score $temp ui_temp matches 0 run weather clear

# 無効化
    execute if score $temp ui_temp matches 1 run scoreboard players set $weather_cycle ui_world 0
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 環境サイクルを再開します","color":"gray"}]
    execute if score $temp ui_temp matches 1 run gamerule doDaylightCycle true
    execute if score $temp ui_temp matches 1 run gamerule doWeatherCycle true