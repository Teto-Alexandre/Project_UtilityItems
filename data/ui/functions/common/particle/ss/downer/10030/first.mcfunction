#
#tellraw @a [{"text":"> "},{"score":{"name": "@s","objective": "ui_team"},"color": "aqua"},{"score":{"name": "@s","objective": "ui_id"},"color": "green"}]

tag @e[tag=ui_temp_target] remove ui_temp_target
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..20,sort=nearest,limit=1] add ui_temp_target
execute unless entity @e[tag=ui_temp_target] run summon marker ^ ^ ^ {Tags:["ui_temp_target","ui_temp_target_marker"]}
execute at @e[tag=ui_temp_target] run teleport @s ~ ~ ~
execute as @s run function ui:template/square_shuffle
execute as @s run function ui:template/square_shuffle
execute at @e[tag=ui_temp_target] facing entity @s feet run teleport @s ^ ^ ^5
execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
kill @e[tag=ui_temp_target_marker]
tag @e[tag=ui_temp_target] remove ui_temp_target

#scoreboard players set $mod ui_calc1 9
#function ui:common/rand
#scoreboard players operation @s ui_is += $rand ui_calc1
