scoreboard players remove $count ui_temp 1
execute unless block ~ ~ ~ #ui:nocol run function ui:tmw/601/feet/5/fill
execute if score $count ui_temp matches 1.. positioned ~ ~-1 ~ run function ui:tmw/601/feet/5/act