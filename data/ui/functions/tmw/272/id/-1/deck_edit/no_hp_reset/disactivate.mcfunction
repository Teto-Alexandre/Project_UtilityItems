execute if score @s ui_tmw272_no_hp_reset matches 1.. run tellraw @s [{"text":"[Idling] > ","color": "green"},{"text":"戦線参加時に通常通り体力が再設定されるようになった","color": "gray"}]
execute if score @s ui_tmw272_no_hp_reset matches 1.. at @s run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.5 0
execute if score @s ui_tmw272_no_hp_reset matches 1.. at @s run particle dust 0 3 0 1 ~ ~0.9 ~ 0.4 0.4 0.4 0 15 force

execute if score @s ui_tmw272_no_hp_reset matches -2147483648..2147483647 run scoreboard players reset @s ui_tmw272_no_hp_reset

