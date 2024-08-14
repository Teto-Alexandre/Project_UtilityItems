data merge storage ui:tmw272 {temp:{input:"dazzle"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute if entity @s[tag=!tmw272_temp_card_effect_activated_dazzle] unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"している！"}]

execute unless score $target_type ui_temp matches 2 unless score $target_type ui_temp matches 8 run scoreboard players operation $target_count ui_temp -= @s ui_tmw272_dazzle

tag @s add tmw272_temp_card_effect_activated_dazzle

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
