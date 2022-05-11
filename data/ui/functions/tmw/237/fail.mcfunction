# 発射音
    playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0

# クールタイム
    execute unless score $burst ui_temp matches 1 store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $burst ui_temp matches 1 store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $temp ui_temp
    scoreboard players remove $burst ui_temp 1

# 変更した
    scoreboard players set $changed ui_temp 1