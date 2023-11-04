#1tickに1回

#
tag @s add ui_temp_this

scoreboard players operation $team ui_temp = @s ui_team
function ui:common/tag_temp_team/

execute at @s anchored eyes positioned ^ ^ ^ if score @s ui_use1 matches 1.. run function ui:tmw/258/use/laser.manager

execute at @s[tag=tmw_drop_n] at @e[tag=tmw_258_1] run particle end_rod ~ ~ ~ 0 0 0 1 20 force
execute at @s[tag=tmw_drop_n] run kill @e[tag=tmw_258_1]
execute at @s[tag=tmw_drop_n] run playsound block.glass.break player @a ~ ~ ~ 2 0.5

tag @s remove ui_temp_this
