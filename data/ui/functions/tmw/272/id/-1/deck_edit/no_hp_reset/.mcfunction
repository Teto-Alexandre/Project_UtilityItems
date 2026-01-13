# tick処理
    execute as @a if score @s ui_tmw272_no_hp_reset matches 1.. run scoreboard players remove @s ui_tmw272_no_hp_reset 1
    execute as @a if score @s ui_tmw272_no_hp_reset matches ..0 run tellraw @s [{"text":"[Idling] > ","color": "green"},{"text":"戦線参加時に通常通り体力が再設定されるようになった","color": "gray"}]
    execute as @a if score @s ui_tmw272_no_hp_reset matches ..0 at @s run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.5 0
    execute as @a if score @s ui_tmw272_no_hp_reset matches ..0 at @s run particle dust 0 3 0 1 ~ ~0.9 ~ 0.4 0.4 0.4 0 15 force
    execute as @a if score @s ui_tmw272_no_hp_reset matches ..0 run scoreboard players reset @s ui_tmw272_no_hp_reset

# SSロジック維持
    execute as @a if score @s ui_tmw272_no_hp_reset matches 1.. run schedule function ui:tmw/272/id/-1/deck_edit/no_hp_reset/ 1t replace
    #execute as @a if score @s ui_tmw272_no_hp_reset matches 1.. run schedule function ui:tmw/272/id/-1/deck_edit/no_hp_reset/cant 2s replace