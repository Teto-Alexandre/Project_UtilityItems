execute store result score $obj_id_temp ui_temp run data get storage ui:temp init_manager.obj_ids[0].id

execute as @e[tag=ui_temp_player,limit=1] unless score @s ui_tmw272_link_id matches 1..2147483647 if score @s ui_obj_id = $obj_id_temp ui_temp run tag @s add ui_temp_ng_temp
execute as @e[tag=ui_temp_targetable,scores={ui_obj_id=-2147483648..2147483647}] unless score @s ui_tmw272_link_id matches 1..2147483647 if score @s ui_obj_id = $obj_id_temp ui_temp run tag @s add ui_temp_ng_temp

#tellraw @a [{"text":"NG処理: "},{"score":{"name": "$obj_id","objective": "ui_temp"}},{"text":"  該当者:"},{"selector":"@e[tag=ui_temp_ng_temp]"}]

data remove storage ui:temp init_manager.obj_ids[0]
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/-1/ng_filter/burn