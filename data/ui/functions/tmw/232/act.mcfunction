# クリックでゲームモード取得→対応したマーカーとforceloadを置いてスペ化
# クールタイムが200経過したらマーカーに飛ばしてキル、ゲームモードを元に戻す
tag @s add tmw_232_1
tag @s[gamemode=survival] add tmw_232_1_0
tag @s[gamemode=creative] add tmw_232_1_1
tag @s[gamemode=adventure] add tmw_232_1_2
scoreboard players set @s ui_ct 20
forceload add ~ ~
summon marker ~ ~ ~ {Tags:["tmw_232_2","tmw_232_2_temp"]}
tag @e[tag=tmw_232_2_temp] remove tmw_232_2_temp
gamemode spectator @s
particle dust 0.7 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10
particle dust 0 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 10
playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.6 0