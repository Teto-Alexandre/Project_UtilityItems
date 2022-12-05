#
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=ui_common_mine_square] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player

#
    execute as @e[tag=ui_temp_obj,tag=ui_common_mine_square_core] store result score $life ui_temp run scoreboard players remove @s ui_is 1

#
    execute if score $life ui_temp matches ..-1 run execute at @e[tag=ui_temp_obj] run setblock ~ ~ ~ air
    execute if score $life ui_temp matches ..-1 run execute at @e[tag=ui_temp_obj] run setblock ~ ~-1 ~ air
    execute if score $life ui_temp matches ..-1 run kill @e[tag=ui_temp_obj]
    execute if score $life ui_temp matches ..-1 run playsound entity.generic.explode player @a ~ ~-1 ~ 1 1 0
    execute if score $life ui_temp matches ..-1 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force 
    execute if score $life ui_temp matches ..-1 run tellraw @a [{"selector":"@a[tag=ui_temp_player]"},{"text":" failed Minesweeper..."}]
    execute if score $life ui_temp matches 0.. run setblock ~ ~ ~ air
    execute if score $life ui_temp matches 0.. run setblock ~ ~-1 ~ redstone_block
    execute if score $life ui_temp matches 0.. run particle flash ~ ~-1 ~ 0 0 0 0 1 force
    execute if score $life ui_temp matches 0.. run playsound block.glass.break neutral @a ~ ~ ~ 1 1
    execute if score $life ui_temp matches 0.. run tellraw @a [{"selector":"@a[tag=ui_temp_player]"},{"text":" detonated the mine of "},{"score":{"name":"@s","objective":"ui_obj_id"}},{"text":": protection remains "},{"score":{"name":"$life","objective":"ui_temp"}}]

#
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @e[tag=ui_temp_player] remove ui_temp_player
