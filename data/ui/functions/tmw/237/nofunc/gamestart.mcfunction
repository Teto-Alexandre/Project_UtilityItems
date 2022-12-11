# 専用ワールド用の簡易実行関数

#
tag @a remove tmw_237_sp_survive

#
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a[gamemode=!spectator]
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1
execute as @a at @s run spawnpoint @s

#
scoreboard players set @a ui_paint 0
scoreboard objectives remove ui_kills
scoreboard objectives add ui_kills minecraft.custom:minecraft.player_kills
scoreboard objectives setdisplay sidebar ui_kills
tag @a add tmw_237_readtag
tag @a add tmw_237_tag_inkfill