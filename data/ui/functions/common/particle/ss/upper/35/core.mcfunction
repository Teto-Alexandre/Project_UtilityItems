#
execute if score @s ui_is2 matches 1 run function ui:common/particle/ss/upper/35/1
execute if score @s ui_is2 matches 2 run function ui:common/particle/ss/upper/35/2

#
execute if score $is ui_temp matches 1.. run kill @s
