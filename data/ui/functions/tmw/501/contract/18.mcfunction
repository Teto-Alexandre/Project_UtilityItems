# 今の状態を観測
    scoreboard players set $temp ui_temp 0
    execute if entity @s[tag=tmw_501_18] run scoreboard players set $temp ui_temp 1

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[追われる者の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run tag @s add tmw_501_18
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"selector":"@s"},{"text":"の被追跡機構を起動します","color":"gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run tag @s remove tmw_501_18
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"selector":"@s"},{"text":"の被追跡機構を停止します","color":"gray"}]
