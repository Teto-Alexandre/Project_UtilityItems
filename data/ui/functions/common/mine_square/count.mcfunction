#
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=ui_common_mine_square] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player

#
    tag @s add ui_temp_this
    scoreboard players set $calc ui_temp 0
    scoreboard players set @s ui_autohit 0
    execute as @e[tag=ui_temp_obj,tag=!ui_common_mine_square_bomb] run scoreboard players add $calc ui_temp 1
    execute as @e[tag=ui_temp_obj,tag=ui_common_mine_square_clear,tag=!ui_common_mine_square_bomb] run scoreboard players add @e[tag=ui_temp_this] ui_autohit 1
    #tellraw @a [{"score":{"name":"$calc","objective":"ui_temp"}},{"text":" "},{"score":{"name":"@s","objective":"ui_autohit"}}]
    execute if score @s ui_autohit matches 1.. if score $calc ui_temp <= @s ui_autohit run function ui:common/mine_square/system/clear

#
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @e[tag=ui_temp_this] remove ui_temp_this
    tag @e[tag=ui_temp_player] remove ui_temp_player
