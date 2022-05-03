#=======================================================================================================

#コモンイベント利用
scoreboard players set $c.proj.spread ui_temp 150
scoreboard players set $c.proj.speed ui_temp 5
scoreboard players set $c.proj.range ui_temp 50
scoreboard players set $c.proj.particle ui_temp 5
scoreboard players set $c.proj.autohit ui_temp 1
scoreboard players set $c.proj.particle2 ui_temp 6
scoreboard players set $c.proj.kb ui_temp 1
scoreboard players set $c.proj.damagetype ui_temp 1
scoreboard players set $c.proj.break ui_temp 0
scoreboard players set $c.proj.damage ui_temp 7

function ui:common/projectile

playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.2 0

execute store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 1

#=======================================================================================================