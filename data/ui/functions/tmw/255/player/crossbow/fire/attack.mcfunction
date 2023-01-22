# 弾丸の射出

#たまありバースト+クールタイム完遂
execute at @s[gamemode=!spectator,tag=!ui_temp_fail] run function ui:tmw/255/player/crossbow/attack/master
#バースト+クールタイム完遂、発射できなかったなら
execute at @s[tag=!ui_temp_success] run function ui:tmw/255/player/crossbow/fail

#
scoreboard players add $burst ui_temp 1
