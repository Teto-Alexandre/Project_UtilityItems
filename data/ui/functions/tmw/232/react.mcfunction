# クリックでゲームモード取得→対応したマーカーとforceloadを置いてスペ化
# クールタイムが200経過したらマーカーに飛ばしてキル、ゲームモードを元に戻す
tag @s remove tmw_232_1
execute at @e[tag=tmw_232_2,limit=1] rotated as @s run teleport @s ~ ~ ~ ~ ~
teleport @s @s
gamemode survival @s[tag=tmw_232_1_0]
gamemode creative @s[tag=tmw_232_1_1]
gamemode adventure @s[tag=tmw_232_1_2]
tag @s remove tmw_232_1_0
tag @s remove tmw_232_1_1
tag @s remove tmw_232_1_2
execute at @s run kill @e[tag=tmw_232_2,limit=1]
execute at @s run forceload remove ~ ~
execute at @s run particle dust 0.7 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10
execute at @s run particle dust 0 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.6 0