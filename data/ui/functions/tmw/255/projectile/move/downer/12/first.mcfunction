tag @s add ui_tmw255_proj_move_-12_first

tag @s add ui_temp_this

tag @s add ui_255_proj_ghost

execute as @a if score $id ui_temp = @s ui_id run tag @s[predicate=ui:is_sneaking] add ui_temp_player

execute at @s as @e[distance=1..200,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/move/downer/12/target_marker
execute at @s positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..1.5,sort=nearest,limit=1] add ui_temp_target2
#execute at @e[tag=ui_temp_target2] run particle dust 0 1 1 2 ~ ~1.5 ~ 0 0 0 0 1 normal @a
#execute at @e[tag=ui_temp_marker,tag=!ui_temp_target2] run particle dust 1 0 0 1 ~ ~1.5 ~ 0 0 0 0 1 normal @a
kill @e[tag=ui_temp_marker,tag=!ui_temp_target2]

scoreboard players reset $obj_id ui_temp
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target2] ui_obj_id
kill @e[tag=ui_temp_marker]
execute as @e[distance=1..200,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_target

    execute unless entity @a[tag=ui_temp_player] run function ui:tmw/255/projectile/move/downer/12/normal
    execute if entity @a[tag=ui_temp_player] unless score $obj_id ui_temp matches 1.. run function ui:tmw/255/projectile/move/downer/12/normal

    execute if entity @a[tag=ui_temp_player] if score $obj_id ui_temp matches 1.. run function ui:tmw/255/projectile/move/downer/12/teleport
    
tag @s remove ui_temp_this
tag @a[tag=ui_temp_player] remove ui_temp_player
tag @e[tag=ui_temp_target] remove ui_temp_target
