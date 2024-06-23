data remove storage ui:temp temp.effect.temp1
data remove storage ui:temp temp.effect.temp2
execute unless data storage ui:temp temp.effect.all unless data storage ui:temp temp.effect.only_one run data modify storage ui:temp temp.effect.temp1 append from entity @s Inventory[{tag:{IsCG1:1}}]
execute unless data storage ui:temp temp.effect.all if data storage ui:temp temp.effect.only_one run data modify storage ui:temp temp.effect.temp1 append from entity @s Inventory[{tag:{IsCG1:2}}]
execute if data storage ui:temp temp.effect.all run data modify storage ui:temp temp.effect.temp1 append from entity @s Inventory[]
data modify storage ui:temp temp.effect.temp2 set from storage ui:temp temp.effect.temp1[0]
data remove storage ui:temp temp.effect.temp2.Slot
#execute if data storage ui:temp temp.effect.temp2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が["},{"storage":"ui:temp","nbt":"temp.effect.temp2.tag.display.Name","interpret": true},{"text": "]を捨てた"}]

execute if data storage ui:temp temp.effect.temp2.tag.display run data modify storage ui:temp temp.display set from storage ui:temp temp.effect.temp2.tag.display

execute unless data storage ui:temp temp.effect.all if score $just_check ui_temp matches 0 unless data storage ui:temp temp.effect.only_one store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all{IsCG1:1} 1
execute unless data storage ui:temp temp.effect.all if score $just_check ui_temp matches 0 if data storage ui:temp temp.effect.only_one store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all{IsCG1:2} 1
execute if data storage ui:temp temp.effect.all if score $just_check ui_temp matches 0 store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all 1
execute unless data storage ui:temp temp.effect.all if score $just_check ui_temp matches 1 unless data storage ui:temp temp.effect.only_one store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all{IsCG1:1} 0
execute unless data storage ui:temp temp.effect.all if score $just_check ui_temp matches 1 if data storage ui:temp temp.effect.only_one store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all{IsCG1:2} 0
execute if data storage ui:temp temp.effect.all if score $just_check ui_temp matches 1 store result score $condition_checker_temp_temp ui_temp run clear @s #ui:all 0

execute if score $condition_checker_temp_temp ui_temp matches 1.. if score $just_check ui_temp matches 0 if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect

execute if data storage ui:temp temp.effect.add_list run data modify storage ui:temp card.list append from storage ui:temp temp.effect.temp2
