execute unless score @s ui_tmw272_no_hp_reset matches 1.. run tellraw @s [{"text":"[Idling] > ","color": "red"},{"text":"戦線参加時に体力がリセットされないエリアに入った","color": "gray"}]
execute unless score @s ui_tmw272_no_hp_reset matches 1.. at @s run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.5 0
execute unless score @s ui_tmw272_no_hp_reset matches 1.. at @s run particle dust 3 0 0 1 ~ ~0.9 ~ 0.4 0.4 0.4 0 15 force

scoreboard players set @s ui_tmw272_no_hp_reset 100

schedule function ui:tmw/272/id/-1/deck_edit/no_edit/ 1t replace
