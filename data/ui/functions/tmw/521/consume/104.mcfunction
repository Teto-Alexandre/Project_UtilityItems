#コモンイベント利用
#scoreboard players set $c.dice.max ui_temp 9
#scoreboard players set $c.dice.add ui_temp 7
#scoreboard players set $c.dice.dis ui_temp 0
#function ui:common/dice/

effect give @s glowing 60 0 false
tag @s add ui_card_104
scoreboard players set @s ui_d_mult 20
scoreboard players set @s ui_d_luck -1

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20