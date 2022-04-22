#=======================================================================================================

teleport @s ^ ^ ^6 ~ ~
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 0.8 0.8 0
execute at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 5

#=======================================================================================================