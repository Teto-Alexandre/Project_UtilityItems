# これ
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=tmw_268] if score $obj_id ui_temp = @s ui_obj_id run tag @s add ui_temp_obj
    execute as @e[tag=ui_temp_obj,tag=tmw_268_can_ride_on_master] at @s on passengers if entity @s[type=player] run tag @s add ui_temp_passenger

#
    execute if entity @a[tag=ui_temp_passenger,tag=tmw_drop_n] run function ui:tmw/268/ss/toggle_state_tag/q
    execute if entity @a[tag=ui_temp_passenger,tag=tmw_oh_n] run function ui:tmw/268/ss/toggle_state_tag/f
    execute if entity @a[tag=ui_temp_passenger,tag=tmw_use_n] run function ui:tmw/268/ss/toggle_state_tag/rc

# 例えば浮遊
    execute if entity @s[tag=tmw_268_state_q] run execute if block ~ ~ ~ #ui:nocol if block ~ ~-1 ~ #ui:nocol if block ~ ~-2 ~ #ui:nocol if block ~ ~-3 ~ #ui:nocol run tag @s add ui_temp_jet
    execute if entity @s[tag=tmw_268_state_q] run execute unless entity @s[tag=ui_temp_jet] rotated as @p run function ui:template/accelerator/1
    execute if entity @s[tag=tmw_268_state_q] run execute unless entity @s[tag=ui_temp_jet] rotated as @p run playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5 0
    execute if entity @s[tag=tmw_268_state_q] run tag @s remove ui_temp_jet

# 向き回転
    execute if entity @s[tag=tmw_268_state_f] rotated as @a[tag=ui_temp_passenger] run teleport @s ~ ~ ~ ~ ~

# タグ解除
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @a[tag=ui_temp_passenger] remove ui_temp_passenger