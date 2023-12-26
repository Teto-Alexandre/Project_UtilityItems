#> ui:tmw/271/ss/eo/idc
#
# #タレットを管理する
#
# @within function ui:tmw/271/ss/tec

# チームを認識して自他の識別タグを付与する
scoreboard players operation $id ui_temp = @s ui_id
execute as @e[tag=ui_idc] if score @s ui_id = $id ui_temp run tag @s add ui_temp_id_control
tag @e[tag=ui_temp_id_control] add ui_temp_ones
execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player

#
#tellraw @a [{"text":"IDOperation>> "},{"score":{"name": "$id","objective": "ui_temp"},"color": "green"},{"text":": "},{"selector":"@e[tag=ui_temp_id_control]"}]
execute as @e[tag=ui_temp_id_control] at @s run function ui:tmw/271/ss/core

# 一時タグ削除
tag @e[tag=ui_temp_id_control] remove ui_idc
tag @e[tag=ui_temp_id_control] remove ui_temp_id_control
tag @e[tag=ui_temp_ones] remove ui_temp_ones
tag @a[tag=ui_temp_player] remove ui_temp_player

# 再帰
execute if entity @e[tag=ui_idc] as @e[limit=1,tag=ui_temp_team_control,tag=ui_idc] run function ui:tmw/271/ss/eo/idc
