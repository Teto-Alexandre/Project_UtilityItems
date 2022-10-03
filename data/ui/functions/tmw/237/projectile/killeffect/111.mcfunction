# ミサイルの発射を媒介する

# その場にミサイルを召喚する
scoreboard players set $success ui_temp 0
scoreboard players set $obj_id ui_temp 0
scoreboard players operation $obj_id ui_temp = @e[tag=ui_temp_target2] ui_obj_id
#id
#team
scoreboard players set $particle.end ui_temp 205
scoreboard players set $speed ui_temp 50
scoreboard players set $speed.add ui_temp 0
scoreboard players set $range ui_temp 80
scoreboard players set $spread ui_temp 0
scoreboard players set $damage ui_temp 100
data modify storage ui:temp temp.Name set value '{"text":"ミサイル","color":"gold"}'
scoreboard players set $deathmessage ui_temp 1
execute positioned ~ ~ ~ run function ui:tmw/237/attack/missile/fire_here

# データ消し
data remove storage ui:temp temp.Name
