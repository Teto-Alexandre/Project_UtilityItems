# 今の状態を観測 true=1 false=0
    execute store result score $temp ui_temp run gamerule mobGriefing

# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[破壊効果の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

# 有効化
    execute if score $temp ui_temp matches 0 run gamerule mobGriefing true
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 破壊効果は通常通りに発生します","color":"gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run gamerule mobGriefing false
    execute if score $temp ui_temp matches 1 run tellraw @a [{"text":"Contract_World","color":"yellow"},{"text":"> 破壊効果を環境に無害な形に置き換えます","color":"gray"}]