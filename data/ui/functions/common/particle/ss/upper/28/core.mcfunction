#
execute if score @s ui_is2 matches 3.. run teleport @s ~ ~ ~ ~ ~4


# madan貫通1
execute if score @s ui_is2 matches 1 run function ui:common/particle/ss/upper/28/1
# madan加速2
execute if score @s ui_is2 matches 2 run function ui:common/particle/ss/upper/28/2
# madan探知1、加速4（Xrot回転）
execute if score @s ui_is2 matches 3 run function ui:common/particle/ss/upper/28/3
# madan転送2（Xrot回転）
execute if score @s ui_is2 matches 4 run function ui:common/particle/ss/upper/28/4
# madan貫通3（Xrot回転）
execute if score @s ui_is2 matches 5 run function ui:common/particle/ss/upper/28/5

execute if score $is ui_temp matches 20.. run kill @s