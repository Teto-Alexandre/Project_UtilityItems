#召喚する

# id共有
execute unless score @s ui_obj_id matches 1.. run function ui:misc/act/make_obj_id
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
tag @s add ui_temp_target

# 召喚
execute at @a[tag=ui_temp_this] run summon armor_stand ~ ~ ~ {Tags:["ui_temp_unpower","tmw_258_1"],NoGravity:1b,Invisible:1b,Marker:1b}

# 召喚獣にチーム割り振り
scoreboard players operation @e[tag=ui_temp_unpower] ui_team = $team ui_temp
scoreboard players operation @e[tag=ui_temp_unpower] ui_is = $obj_id ui_temp

# タグ消し
tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
tag @e[tag=ui_temp_target] remove ui_temp_target

#
scoreboard players set $success ui_temp 1