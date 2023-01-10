#コモンイベント利用
scoreboard players set $c.proj.spread ui_temp 100
scoreboard players set $c.proj.speed ui_temp 40
scoreboard players set $c.proj.range ui_temp 45
scoreboard players set $c.proj.particle ui_temp 3
scoreboard players set $c.proj.autohit ui_temp 1
scoreboard players set $c.proj.particle2 ui_temp 3
scoreboard players set $c.proj.kb ui_temp 1
scoreboard players set $c.proj.damagetype ui_temp 10
scoreboard players set $c.proj.break ui_temp 6

scoreboard players set $c.dice.max ui_temp 11
scoreboard players set $c.dice.add ui_temp 3
scoreboard players set $c.dice.dis ui_temp 0
function ui:common/dice
scoreboard players operation $c.proj.damage ui_temp = @s ui_d_num
scoreboard players operation $c.proj.damage ui_temp *= #10 ui_num

function ui:common/projectile