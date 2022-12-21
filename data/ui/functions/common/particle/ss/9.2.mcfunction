scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/9.2
execute if score $count ui_temp matches 0.. run function ui:common/particle/ss/9.3