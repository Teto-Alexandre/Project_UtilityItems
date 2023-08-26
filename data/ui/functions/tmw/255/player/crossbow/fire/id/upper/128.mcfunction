# 弓
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 6
    execute if score $reloadtime ui_temp matches 1.. run scoreboard players set $firetime ui_temp 0

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run data modify storage ui:temp CustomModelData set value 180026
    execute if score $firetime.temp ui_temp matches 0 run effect give @s slowness 1 1 true
    execute if score $firetime.temp ui_temp matches 1 run data modify storage ui:temp CustomModelData set value 180027
    execute if score $firetime.temp ui_temp matches 2 run data modify storage ui:temp CustomModelData set value 180028
    execute if score $firetime.temp ui_temp matches 3 run data modify storage ui:temp CustomModelData set value 180025
    execute if score $firetime.temp ui_temp matches 3 run effect clear @s slowness
    execute if score $firetime.temp ui_temp matches 0..3 run item modify entity @s weapon.mainhand ui:gun/each/model

#
    execute if score $firetime.temp ui_temp matches 3 run scoreboard players set $fire ui_temp 1
    #execute if score $firetime.temp ui_temp matches 3 run playsound entity.skeleton.shoot player @a ~ ~ ~ 1 1.25 0
    #execute if score $firetime.temp ui_temp matches 3 run summon arrow ~ ~ ~ {Tags:["ui_temp_unpower"],crit:1b}
    #execute if score $firetime.temp ui_temp matches 3 as @e[tag=ui_temp_unpower] positioned as @s run function ui:template/accelerator/3
    #execute if score $firetime.temp ui_temp matches 3 run tag @s remove ui_temp_unpower
    execute if score $firetime.temp ui_temp matches 3 run execute store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
    execute if score $firetime.temp ui_temp matches 3 run execute in overworld store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 3 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 3 run scoreboard players set $changed ui_temp 1
