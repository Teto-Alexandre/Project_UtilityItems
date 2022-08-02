# 自分と同じidを持つマーカーをターゲットエンティティ全てが生成する
execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute at @s facing entity @e[tag=ui_temp_this] feet positioned ^ ^ ^1 facing entity @s feet positioned as @e[tag=ui_temp_this] positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["ui_temp_marker","ui_temp_marker_unpower"]}
execute as @e[tag=ui_temp_marker_unpower] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
tag @e[tag=ui_temp_marker_unpower] remove ui_temp_marker_unpower
