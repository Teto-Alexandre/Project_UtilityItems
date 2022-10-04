data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
scoreboard players set $damage_type ui_temp 3
scoreboard players set $damage ui_temp 60
execute at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
playsound block.slime_block.fall player @a ~ ~ ~ 2 1 0
playsound block.slime_block.fall player @a ~ ~ ~ 2 0.8 0
particle crit ~ ~ ~ 1 1 1 0.5 50 force
particle explosion ~ ~ ~ 0 0 0 0 1 force

tag @s remove tmw601_1001_fall