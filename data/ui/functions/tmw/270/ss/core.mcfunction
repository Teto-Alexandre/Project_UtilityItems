# これ
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=tmw_270] if score $obj_id ui_temp = @s ui_obj_id run tag @s add ui_temp_obj
    scoreboard players operation $TurretType ui_temp = @s ui_is

#
    execute if score $TurretType ui_temp matches 1 run function ui:tmw/270/ss/id/1/

# タグ解除
    tag @e[tag=ui_temp_obj] remove ui_temp_obj

#
    scoreboard players reset $TurretType ui_temp