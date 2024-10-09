#

# 破壊されたら中身ごと復活
execute if block ~ ~ ~ #ui:nocol run function ui:ui/23/dt_right
execute if block ^ ^ ^1 #ui:nocol run function ui:ui/23/dt_left

# クリック時
scoreboard players reset $slot ui_temp
scoreboard players operation $temp ui_temp = @s ui_is
scoreboard players operation $temp2 ui_temp = @s ui_is2
data merge storage ui:common {input:{Mode:"check_all"}}
execute if score $temp2 ui_temp matches 0.. run data merge storage ui:common {input:{Mode:"null"}}
function ui:common/chest/
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot","objective": "ui_temp"},"color":"red"}]
execute if score $slot ui_temp matches 0.. run scoreboard players operation $slot_res ui_temp = $slot ui_temp
data merge storage ui:common {input:{Mode:"check_all"}}
execute if score $temp2 ui_temp matches 0.. run data merge storage ui:common {input:{Mode:"check_downer1"}}
execute positioned ^ ^ ^1 run function ui:common/chest/
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot","objective": "ui_temp"},"color":"gray"}]
execute if score $slot ui_temp matches 0.. run scoreboard players add $slot ui_temp 27
execute if score $slot ui_temp matches 0.. run scoreboard players operation $slot_res ui_temp = $slot ui_temp
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot_res","objective": "ui_temp"}},{"text":", page:"},{"score":{"name": "$temp","objective": "ui_temp"}},{"text":", chest: "},{"score":{"name": "$temp2","objective": "ui_temp"}}]

# ページ管理
data modify storage ui:temp temp set from storage ui:dimensional_chest Items
#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
execute if score $slot_res ui_temp matches 0.. if score $temp ui_temp matches 2.. run function ui:ui/23/menu/extract
execute if score $slot_res ui_temp matches 0.. run data modify storage ui:temp temp_trim set from storage ui:temp temp[0]
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 1.. run function ui:ui/23/each/extract
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 0 run function ui:ui/23/each/push
execute if score $slot_res ui_temp matches 0.. run function ui:ui/23/click
#execute if score $slot_res ui_temp matches 0.. run tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
execute if score $slot_res ui_temp matches 0.. run data modify storage ui:temp temp set from storage ui:dimensional_chest Items
execute if score $slot_res ui_temp matches 0.. run scoreboard players operation $temp ui_temp = @s ui_is
execute if score $slot_res ui_temp matches 0.. run scoreboard players operation $temp2 ui_temp = @s ui_is2
execute if score $slot_res ui_temp matches 0.. if score $temp ui_temp matches 2.. run function ui:ui/23/menu/extract
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches -1 run function ui:ui/23/menu/1
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 1.. run function ui:ui/23/each/extract
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 0 run function ui:ui/23/each/1
data remove storage ui:temp temp
data remove storage ui:temp temp2
data remove storage ui:temp temp_trim

# 保存
data modify storage ui:dimensional_chest Items_Right set from block ~ ~ ~ Items
data modify storage ui:dimensional_chest Items_Left set from block ^ ^ ^1 Items

particle dust 0 1 1 2 ^ ^0.9 ^0.5 0.2 0 0.2 0 1 normal

# 近くでしゃがむと消滅 - したら困るでしょ 、destroyを起動して最寄りの次元チェストを破壊
#execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/23/st

#
scoreboard players reset $slot ui_temp
scoreboard players reset $slot_res ui_temp