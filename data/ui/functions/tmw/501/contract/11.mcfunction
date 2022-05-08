# 今の状態を観測
    scoreboard players operation $temp ui_temp = $gun.react ui_world

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[銃反動の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run scoreboard players set $gun.react ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 銃による反動を無効化します","color":"gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run scoreboard players set $gun.react ui_world 0
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 銃による反動を有効化します","color":"gray"}]