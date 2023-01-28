#コモンイベント利用
scoreboard players set $c.dice.max ui_temp 13
scoreboard players set $c.dice.add ui_temp 3
scoreboard players set $c.dice.dis ui_temp 0
function ui:common/dice/

give @s stone_pickaxe
data merge storage ui:temp {give:{id:"minecraft:cobblestone",Count:1b}}
scoreboard players operation $c.give.num ui_temp = @s ui_d_num
function ui:common/give
effect give @s haste 30 0 false
scoreboard players set @s ui_d_luck 1

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20