#=======================================================================================================

effect give @s regeneration 15 1 false
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
playsound entity.player.levelup player @a ~ ~ ~ 0.8 1.8 0

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 7

#=======================================================================================================