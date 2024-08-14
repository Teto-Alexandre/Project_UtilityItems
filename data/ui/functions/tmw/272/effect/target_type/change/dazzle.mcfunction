execute unless score $target_type ui_temp matches 2 unless score $target_type ui_temp matches 8 run scoreboard players operation $target_count ui_temp -= @s ui_tmw272_dazzle

execute unless score $target_type_temp ui_temp = $target_type ui_temp run tag @s add tmw272_temp_card_effect_activated_temp_temp
execute unless score $target_count_temp ui_temp = $target_count ui_temp run tag @s add tmw272_temp_card_effect_activated_temp_temp

execute if score $target_type ui_temp matches 3 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 4 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 9 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 10 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 12 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 14 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 15 run tag @s remove tmw272_temp_card_effect_activated_temp_temp
execute if score $target_type ui_temp matches 16 run tag @s remove tmw272_temp_card_effect_activated_temp_temp

data merge storage ui:tmw272 {temp:{input:"dazzle"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute if entity @s[tag=tmw272_temp_card_effect_activated_temp_temp,tag=!tmw272_temp_card_effect_activated_dazzle] unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"している！"}]

tag @s add tmw272_temp_card_effect_activated_dazzle
tag @s remove tmw272_temp_card_effect_activated_temp_temp

## 1   -   VEで見ている相手
## 2   -   自分
## 3   -   自分以外敵全員
## 4   -   自分含む全員
## 5   -   自分以外全員から target_count の数だけランダムに抽選
## 6   -   自分含む全員から target_count の数だけランダムに抽選
## 8   -   自分とVEで見ている相手
## 10  -   自分含む味方全員
## 11  -   自分含む味方から target_count の数だけランダムに抽選
## 12  -   自分以外味方全員
## 13  -   自分以外味方から target_count の数だけランダムに抽選
## 16  -   自分以外全員
## 17  -   自分以外全員から target_count の数だけランダムに抽選
## 18  -   自分 + 自分以外全員から target_count の数だけランダムに抽選
