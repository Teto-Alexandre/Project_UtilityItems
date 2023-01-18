# 今の状態を観測
    scoreboard players set $temp ui_temp 0
    execute if entity @s[tag=tmw_501_19] run scoreboard players set $temp ui_temp 1

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[常時読み込みテストの契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run tag @s add tmw_501_19
    execute if score $temp ui_temp matches 0 run tag @s add tmw_501_19_lobby
    execute if score $temp ui_temp matches 0 run tag @s add tmw_501_19_lobby_first
    execute if score $temp ui_temp matches 0 run scoreboard players add $tmw_501_19 ui_world 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"selector":"@s"},{"text":"をプレイヤーとして認証します","color":"gray"}]
    execute if score $temp ui_temp matches 0 run schedule function ui:tmw/501/19/ss 1t append

# 無効化
    execute if score $temp ui_temp matches 1 run tag @s remove tmw_501_19
    execute if score $temp ui_temp matches 1 run tag @s remove tmw255_disable_fire
    execute if score $temp ui_temp matches 1 run scoreboard players remove $tmw_501_19 ui_world 1
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"selector":"@s"},{"text":"をプレイヤーから除外します","color":"gray"}]
