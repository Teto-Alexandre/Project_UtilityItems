# 空中にあるなら
scoreboard players add $count ui_temp 1
execute if score $count ui_temp matches 10.. run scoreboard players set $success ui_temp 2
execute if score $count ui_temp matches 10.. run kill @s
execute if score $count ui_temp matches ..9 unless block ~ ~-1.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10015/inair2
execute if score $count ui_temp matches ..9 if block ~ ~-1.1 ~ #ui:nocol run teleport @s ~ ~-1 ~
execute if score $count ui_temp matches ..9 if block ~ ~-1.1 ~ #ui:nocol at @s run function ui:common/particle/ss/downer/10015/inair