playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0

execute unless score @s ui_tmw272_mana_max matches 10.. run scoreboard players add @s ui_tmw272_mana_max 1
execute if score @s ui_tmw272_mana matches 1.. if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players set @s ui_tmw272_mana 0
execute if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players operation @s ui_tmw272_mana += @s ui_tmw272_mana_max
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"> ","color":"green"},{"text":"最大コスト+1 = "},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":", コストを最大まで回復しました"}]

execute if score @e[tag=tmw272_active_match,limit=1] ui_tmw272_match_round matches 2.. run function ui:tmw/272/common/draw/once