data modify storage ui:temp temp set value {name:'{"text":"null"}'}
data modify storage ui:temp temp.name set from storage ui:temp card.name

scoreboard players set $turn_name ui_temp 0
$execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[{name:$(name)}] run scoreboard players set $turn_name ui_temp 1

$say $(name)

execute if score $turn_name ui_temp matches 1 run tellraw @s ["",{"text":"このカードは1ターンに1回しか使用できません","color":"gray"}]
execute if score $turn_name ui_temp matches 1 run scoreboard players set $check_cost ui_temp 0

#
execute if score $turn_name ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name append from storage ui:temp temp

scoreboard players reset $turn_name ui_temp