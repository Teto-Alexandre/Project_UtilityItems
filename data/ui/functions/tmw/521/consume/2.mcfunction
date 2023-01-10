#コモンイベント利用
scoreboard players set $c.proj.spread ui_temp 100
scoreboard players set $c.proj.speed ui_temp 40
scoreboard players set $c.proj.range ui_temp 40
scoreboard players set $c.proj.particle ui_temp 1
scoreboard players set $c.proj.autohit ui_temp 1
scoreboard players set $c.proj.particle2 ui_temp 1
scoreboard players set $c.proj.kb ui_temp 1
scoreboard players set $c.proj.damagetype ui_temp 2
scoreboard players set $c.proj.break ui_temp 7
scoreboard players set $c.proj.damage ui_temp 16
scoreboard players set $c.proj.damage.s ui_temp 7
scoreboard players operation $c.proj.damage ui_temp *= #10 ui_num
function ui:common/projectile