#

#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/upper/32/3/1
execute if score $is ui_temp matches 10 run function ui:common/particle/ss/upper/32/3/2

#
execute if score $is ui_temp matches 10.. run kill @s