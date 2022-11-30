#
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=ui_common_mine_square] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player

#
    scoreboard players set $calc ui_temp 0
    scoreboard players set $calc2 ui_temp 0
    execute as @e[tag=ui_temp_obj,tag=!ui_common_mine_square_bomb] run scoreboard players add $calc ui_temp 1
    execute as @e[tag=ui_temp_obj,tag=ui_common_mine_square_clear] run scoreboard players add $calc2 ui_temp 1
    #tellraw @a [{"score":{"name":"$calc","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$calc2","objective":"ui_temp"}}]
    execute if score $calc2 ui_temp matches 1.. if score $calc ui_temp <= $calc2 ui_temp run function ui:common/mine_square/system/clear

#
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @e[tag=ui_temp_player] remove ui_temp_player