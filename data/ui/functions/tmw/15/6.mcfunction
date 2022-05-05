#=======================================================================================================

#コモンイベント利用
scoreboard players set $c.proj.spread ui_temp 30
scoreboard players set $c.proj.speed ui_temp 5
scoreboard players set $c.proj.range ui_temp 60
scoreboard players set $c.proj.particle ui_temp 3
scoreboard players set $c.proj.autohit ui_temp 1
scoreboard players set $c.proj.particle2 ui_temp 3
scoreboard players set $c.proj.kb ui_temp 1
scoreboard players set $c.proj.damagetype ui_temp 10
scoreboard players set $c.proj.break ui_temp 6
scoreboard players set $c.proj.damage ui_temp 15

function ui:common/projectile

playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.8 1.6 0

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 4

#=======================================================================================================