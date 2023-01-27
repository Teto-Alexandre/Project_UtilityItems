# 光線
scoreboard players remove $count ui_temp 1
execute unless block ^ ^ ^1 #ui:nocol positioned ~ ~1 ~ run function ui:tmw/501/19/functions/respawn/check/here
execute if score $count ui_temp matches 1 run function ui:tmw/501/19/functions/respawn/check/here
execute unless score $count ui_temp matches 0 if block ^ ^ ^1 #ui:nocol positioned ^ ^ ^1 run function ui:tmw/501/19/functions/respawn/check/ray