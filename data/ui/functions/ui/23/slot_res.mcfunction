# ページ管理
data modify storage ui:temp temp set from storage dimensional_chest: Items
#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
execute if score $temp ui_temp matches 2.. run function ui:ui/23/menu/extract
data modify storage ui:temp temp_trim set from storage ui:temp temp[0]
execute if score $temp2 ui_temp matches 1.. run function ui:ui/23/each/extract
execute if score $temp2 ui_temp matches 0 if entity @s[tag=!ui_23_1_readonly] run function ui:ui/23/each/push
function ui:ui/23/click
#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
data modify storage ui:temp temp set from storage dimensional_chest: Items
scoreboard players operation $temp ui_temp = @s ui_is
scoreboard players operation $temp2 ui_temp = @s ui_is2
execute if score $temp ui_temp matches 2.. run function ui:ui/23/menu/extract
execute if score $temp2 ui_temp matches -1 run function ui:ui/23/menu/1
execute if score $temp2 ui_temp matches 1.. run function ui:ui/23/each/extract
execute if score $temp2 ui_temp matches 0 run function ui:ui/23/each/1
data remove storage ui:temp temp
data remove storage ui:temp temp2
data remove storage ui:temp temp_trim

# 保存
data modify storage dimensional_chest: Items_Right set from block ~ ~ ~ Items
data modify storage dimensional_chest: Items_Left set from block ^ ^ ^1 Items
