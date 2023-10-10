playsound block.note_block.hat player @s ~ ~ ~ 1 1.5 0

execute unless score @s ui_tmw272_mana_max matches 10.. run scoreboard players add @s ui_tmw272_mana_max 1
execute if score @s ui_tmw272_mana matches 1.. if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players set @s ui_tmw272_mana 0
execute if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players operation @s ui_tmw272_mana += @s ui_tmw272_mana_max
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"> ","color":"green"},{"text":"最大コスト+1 = "},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":", コストを最大まで回復しました"}]

execute if score @e[tag=tmw272_active_match,limit=1] ui_tmw272_match_round matches 2.. run function ui:tmw/272/common/draw/once

execute unless score @s ui_tmw272_blessing matches 0 run function ui:tmw/272/match/periodic/blessing
execute unless score @s ui_tmw272_curse matches 0 run function ui:tmw/272/match/periodic/curse

#execute if score @s ui_tmw272_hunger matches 1..
#execute if score @s ui_tmw272_burn matches 1..
#execute if score @s ui_tmw272_speed matches 1..
#execute if score @s ui_tmw272_attack matches 1..
#execute if score @s ui_tmw272_poison matches 1..
#execute if score @s ui_tmw272_invisible matches 1..
#execute if score @s ui_tmw272_regeneration matches 1..
#execute if score @s ui_tmw272_unluck matches 1..
#execute if score @s ui_tmw272_darkness matches 1..
#execute if score @s ui_tmw272_resistance matches 1..
#execute if score @s ui_tmw272_fire_resistance matches 1..
#execute if score @s ui_tmw272_flying matches 1..
#execute if score @s ui_tmw272_trade matches 1..
#execute if score @s ui_tmw272_nausea matches 1..
#execute if score @s ui_tmw272_bleed matches 1..
#execute if score @s ui_tmw272_blindness matches 1..
#execute if score @s ui_tmw272_glowing matches 1..
#execute if score @s ui_tmw272_luck matches 1..
#execute if score @s ui_tmw272_wither matches 1..

scoreboard players set $success ui_temp 0
execute unless score @s ui_tmw272_shield matches 0 run scoreboard players set $success ui_temp 1
execute unless score @s ui_tmw272_shield_next matches 0 run scoreboard players set $success ui_temp 1
execute if score $success ui_temp matches 1 run function ui:tmw/272/match/periodic/shield