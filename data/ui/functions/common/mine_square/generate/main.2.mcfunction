#

#
execute at @e[tag=ui_temp_particle] run setblock ~ ~ ~ glass
execute at @e[tag=ui_temp_particle] run setblock ~ ~1 ~ stone_button[face=floor]
execute at @e[tag=ui_temp_particle] run summon armor_stand ~ ~ ~ {Tags:["ui_common_mine_square","ui_temp_unpower"],Marker:1b,NoGravity:1b,Invisible:1b}

scoreboard players add $size ui_temp 1
scoreboard players operation $calc ui_temp = $size ui_temp
scoreboard players operation $calc ui_temp *= $size ui_temp
scoreboard players operation $num ui_temp < $calc ui_temp
scoreboard players operation $num ui_temp > #1 ui_num

scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
tag @e[tag=ui_temp_unpower,limit=1] add ui_common_mine_square_core

scoreboard players operation @e[tag=ui_common_mine_square_core] ui_is = $life ui_temp

scoreboard players operation @e[tag=ui_temp_unpower] ui_obj_id = $base ui_obj_id
tellraw @a [{"selector":"@s"},{"text":"がマインスイーパー"},{"score":{"name":"$base","objective":"ui_temp"}},{"text":"(サイズ:"},{"score":{"name":"$size","objective":"ui_temp"}},{"text":",ボム:"},{"score":{"name":"$num","objective":"ui_temp"}},{"text":",保護:"},{"score":{"name":"$life","objective":"ui_temp"}},{"text":")を開始しました"}]
scoreboard players add $base ui_obj_id 1

execute if score $num ui_temp matches 1.. run function ui:common/mine_square/generate/loop

function ui:common/mine_square/ss

tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
