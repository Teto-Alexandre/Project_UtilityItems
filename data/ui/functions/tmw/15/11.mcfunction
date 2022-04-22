#=======================================================================================================

effect give @s strength 15 0 false
effect give @s haste 15 1 false
particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
playsound entity.blaze.ambient player @a ~ ~ ~ 0.8 1.6 0

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 10

#=======================================================================================================