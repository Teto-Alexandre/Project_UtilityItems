#コモンイベント利用
#scoreboard players set $c.dice.max ui_temp 9
#scoreboard players set $c.dice.add ui_temp 7
#scoreboard players set $c.dice.dis ui_temp 0
#function ui:common/dice

loot give @s loot chests/spawn_bonus_chest
tag @s add ui_card_102
scoreboard players set @s ui_d_addmax 1

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20