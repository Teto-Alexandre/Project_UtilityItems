# 精密射撃レベル設定

# 読み取り
execute store result score $temp ui_temp run data get storage ui:gun temp.Scope

#
scoreboard players set $success ui_temp 0

#
execute if score $temp ui_temp matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/255/player/crossbow/scope/main

#
execute if score $success ui_temp matches 0 run playsound block.stone.place player @a ~ ~ ~ 1 1.2 0