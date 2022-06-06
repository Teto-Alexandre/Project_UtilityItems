# 必要データ収集
    execute store result score $ct ui_temp run data get storage ui:gun temp2.CT
    execute store result score $width ui_temp run data get storage ui:gun temp2.Width
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage

# チームメンバー識別
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $color ui_temp run tag @s add ui_temp_team

# id共有
    scoreboard players operation $id ui_temp = @s ui_id

# 座標設定
    function ui:tmw/237/attack/roll/forwardturn

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
    execute if score $temp ui_temp matches 1 run playsound block.honey_block.slide player @a ~ ~ ~ 1.5 0.8 0
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