# 必要データ収集
    execute store result score $ct ui_temp run data get storage ui:gun temp2.CT
    execute store result score $reach ui_temp run data get storage ui:gun temp2.Reach
    execute store result score $width ui_temp run data get storage ui:gun temp2.Width
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed

# id共有

# チームメンバー識別
    function ui:common/tag_temp_team/

# 座標設定
    scoreboard players set $temp ui_temp 1
    scoreboard players set $temp2 ui_temp 1
    execute rotated ~ 0 run function ui:tmw/256/attack/roll/set

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp2.Sound
    execute if score $temp ui_temp matches 1 run playsound block.honey_block.slide player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.shulker.shoot player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 2 0
    execute if score $temp ui_temp matches 2 run playsound entity.guardian.attack player @a ~ ~ ~ 1 1.4 0

# 加速
    execute if score $speed ui_temp matches -3 run effect give @s slowness 1 2 true
    execute if score $speed ui_temp matches -2 run effect give @s slowness 1 1 true
    execute if score $speed ui_temp matches -1 run effect give @s slowness 1 0 true
    execute if score $speed ui_temp matches 1.. if score @s ui_use2 matches 10.. run effect give @s speed 1 0 true
    execute if score $speed ui_temp matches 2.. if score @s ui_use2 matches 20.. run effect give @s speed 1 1 true
    execute if score $speed ui_temp matches 3.. if score @s ui_use2 matches 30.. run effect give @s speed 1 2 true

# クールタイム解除時刻.mod
    execute in overworld store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

# 変更した
    scoreboard players set $changed ui_temp 1