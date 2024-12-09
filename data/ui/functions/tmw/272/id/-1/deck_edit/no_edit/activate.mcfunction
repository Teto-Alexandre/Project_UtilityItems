execute unless score @s ui_tmw272_no_deck_edit matches 1.. run tellraw @s [{"text":"[Idling] > ","color": "red"},{"text":"デッキ編集不可エリアに入った","color": "gray"}]
execute unless score @s ui_tmw272_no_deck_edit matches 1.. at @s run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.5 0
execute unless score @s ui_tmw272_no_deck_edit matches 1.. at @s run particle dust 3 0 0 1 ~ ~0.9 ~ 0.4 0.4 0.4 0 15 force

scoreboard players set @s ui_tmw272_no_deck_edit 100

# 強制送還
scoreboard players operation $id ui_temp = @s ui_id

execute as @e[tag=tmw272_deck_dropper_core] if score @s ui_id = $id ui_temp run tag @s add ui_temp_targetable_dropper
execute if entity @e[tag=ui_temp_targetable_dropper] at @e[tag=ui_temp_targetable_dropper] align xyz run teleport @s ~0.5 ~-2 ~0.5

tag @e[tag=ui_temp_targetable_dropper] remove ui_temp_targetable_dropper

schedule function ui:tmw/272/id/-1/deck_edit/no_edit/ 1t replace
