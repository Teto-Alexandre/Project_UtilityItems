#

# 破壊されたら中身ごと復活
execute if block ~ ~ ~ #ui:nocol run function ui:ui/24/dt_right
execute if block ^ ^ ^1 #ui:nocol run function ui:ui/24/dt_left

# クリック時
scoreboard players reset $slot ui_temp
scoreboard players operation $temp ui_temp = @s ui_is
scoreboard players operation $temp2 ui_temp = @s ui_is2
data merge storage ui:common {input:{Mode:"check_all"}}
execute if score $temp ui_temp matches 9 run data merge storage ui:common {input:{Mode:"null"}}
execute if score $temp2 ui_temp matches 0.. run data merge storage ui:common {input:{Mode:"null"}}
function ui:common/chest/
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot","objective": "ui_temp"},"color":"red"}]
execute if score $slot ui_temp matches 0.. run scoreboard players operation $slot_res ui_temp = $slot ui_temp
data merge storage ui:common {input:{Mode:"check_all"}}
execute if score $temp ui_temp matches 9 run data modify storage ui:common input.exclusion set value [{Slot:0},{Slot:1},{Slot:2},{Slot:3},{Slot:4},{Slot:5},{Slot:6},{Slot:7},{Slot:8},{Slot:10}]
execute if score $temp2 ui_temp matches 0.. unless score $temp ui_temp matches 9 run data merge storage ui:common {input:{Mode:"check_downer1"}}
execute positioned ^ ^ ^1 run function ui:common/chest/
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot","objective": "ui_temp"},"color":"gray"}]
execute if score $slot ui_temp matches 0.. run scoreboard players add $slot ui_temp 27
execute if score $slot ui_temp matches 0.. run scoreboard players operation $slot_res ui_temp = $slot ui_temp
#execute if score $slot ui_temp matches 0.. run tellraw @a [{"score":{"name": "$slot_res","objective": "ui_temp"}},{"text":", page:"},{"score":{"name": "$temp","objective": "ui_temp"}},{"text":", chest: "},{"score":{"name": "$temp2","objective": "ui_temp"}}]

# ページ管理&保存
execute if score $slot_res ui_temp matches 0.. run function ui:ui/24/slot_res

particle dust 1 0.5 0 2 ^ ^0.9 ^0.5 0.2 0 0.2 0 1 normal
execute if entity @s[tag=!ui_24_1_readonly] if predicate ui:percentage/10 run particle dust 0 1 0 1 ^ ^0.9 ^0.5 0.4 0.2 0.4 0 10 normal

# 近くでしゃがむと消滅 - したら困るでしょ 、destroyを起動して最寄りのアクセスチェストを破壊
#execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/24/st

#
scoreboard players reset $count ui_temp
scoreboard players reset $count_temp ui_temp
scoreboard players reset $slot ui_temp
scoreboard players reset $slot_res ui_temp

#
tag @s[tag=force_refresh] remove force_refresh
