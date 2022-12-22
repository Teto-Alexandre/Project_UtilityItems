scoreboard players remove $count ui_temp 1
execute unless block ~ ~-1 ~ #ui:nocol unless block ~ ~-1 ~ slime_block run function ui:tmw/601/feet/4/fill
execute if score $count ui_temp matches 1.. positioned ~ ~-1 ~ run function ui:tmw/601/feet/4/act