#=======================================================================================================

#コモンイベント利用
scoreboard players set $c.proj.spread ui_temp 10
scoreboard players set $c.proj.speed ui_temp 200
scoreboard players set $c.proj.range ui_temp 200
scoreboard players set $c.proj.particle ui_temp 3
scoreboard players set $c.proj.autohit ui_temp 1
scoreboard players set $c.proj.particle2 ui_temp 3
scoreboard players set $c.proj.kb ui_temp 1
scoreboard players set $c.proj.damagetype ui_temp 10
scoreboard players set $c.proj.break ui_temp 10
scoreboard players set $c.proj.damage ui_temp 80

function ui:common/projectile

playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 1.2 0

#=======================================================================================================