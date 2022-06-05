# 必要データ収集
    execute unless score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.ShotCT
    execute if score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.BurstCT
    execute store result score $range ui_temp run data get storage ui:gun temp2.Range
    execute store result score $rangetype ui_temp run data get storage ui:gun temp2.RangeType
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage
    execute store result score $multishot ui_temp run data get storage ui:gun temp2.MultiShot
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed
    execute store result score $speed.plus ui_temp run data get storage ui:gun temp2.SpeedPlus
    execute store result score $spread ui_temp run data get storage ui:gun temp2.Spread
    execute store result score $airspread ui_temp run data get storage ui:gun temp2.AirSpread
    execute if entity @s[nbt={OnGround:0b}] run scoreboard players operation $spread ui_temp += $airspread ui_temp
    scoreboard players set $speed.add ui_temp 0

# チャージ補正
    execute if score $burst_alt.id ui_temp matches 1..100 run function ui:tmw/237/shot.burst4
    execute if score $burst_alt.id ui_temp matches 101..200 run function ui:tmw/237/shot.burst5

# ショットガン.lp
    function ui:tmw/237/shot.lp

# スコア依存で足元に塗り判定発生
    execute store result score $temp ui_temp run data get storage ui:gun temp2.ShotFootStep
    execute if score $temp ui_temp matches 1 if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~-0.2 ~-0.2 ~-0.2 ~0.2 ~0.2 ~0.2 light_blue_wool replace #ui:wools
    execute if score $temp ui_temp matches 1 if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~-0.2 ~-0.2 ~-0.2 ~0.2 ~0.2 ~0.2 pink_wool replace #ui:wools
    execute if score $temp ui_temp matches 2 if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
    execute if score $temp ui_temp matches 2 if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 pink_wool replace #ui:wools
    execute if score $temp ui_temp matches 3 if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~-1.0 ~-1.0 ~-1.0 ~1.0 ~1.0 ~1.0 light_blue_wool replace #ui:wools
    execute if score $temp ui_temp matches 3 if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~-1.0 ~-1.0 ~-1.0 ~1.0 ~1.0 ~1.0 pink_wool replace #ui:wools
    execute if score $temp ui_temp matches 1.. run scoreboard players operation @s ui_paint += $temp ui_temp

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp2.Sound
    execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1.4 0
    #execute if score $temp ui_temp matches 1 run playsound entity.shulker.shoot player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 2 0
    execute if score $temp ui_temp matches 2 run playsound entity.guardian.attack player @a ~ ~ ~ 1 1.4 0

# クールタイム解除時刻.mod
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

# 変更した
    scoreboard players set $changed ui_temp 1