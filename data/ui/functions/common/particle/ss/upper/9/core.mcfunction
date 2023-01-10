# 光線が見えない爆破魔法陣

#
execute if score $is ui_temp matches 34..35 run scoreboard players set $count ui_temp 300
execute if score $is ui_temp matches 34..35 positioned ^ ^ ^0.5 run function ui:common/particle/ss/upper/9/4
execute if score $is ui_temp matches 38 run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 15 force
execute if score $is ui_temp matches 38..40 run scoreboard players set $count ui_temp 300
execute if score $is ui_temp matches 38..40 positioned ^ ^ ^ run function ui:common/particle/ss/upper/9/2

#
execute if score $is ui_temp matches 40.. run kill @s
