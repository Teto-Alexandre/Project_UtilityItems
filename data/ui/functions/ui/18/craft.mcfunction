# 武器作成
    scoreboard players set $and ui_temp 0
    data remove storage ui:temp temp
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:1b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:2b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:3b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:10b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:11b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:12b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:19b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:20b}].tag.tmw
    data modify storage ui:temp temp.Items append from block ~ ~ ~ Items[{Slot:21b}].tag.tmw
    execute store success score $check ui_temp run data modify storage ui:temp temp.Item1 set from storage ui:temp temp.Items[{type:-1}]
    scoreboard players operation $and ui_temp += $check ui_temp
    execute store success score $check ui_temp run data modify storage ui:temp temp.Item2 set from storage ui:temp temp.Items[{type:-2}]
    scoreboard players operation $and ui_temp += $check ui_temp
    execute store success score $check ui_temp run data modify storage ui:temp temp.Item3 set from storage ui:temp temp.Items[{type:-3}]
    scoreboard players operation $and ui_temp += $check ui_temp
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]
    data modify storage ui:temp temp.Mods append from storage ui:temp temp.Items[{type:-4}]
    data remove storage ui:temp temp.Items[{type:-4}]

#
    execute if score $and ui_temp matches ..2 run say 素材が足りません
    execute if score $and ui_temp matches 3 run function ui:ui/18/craft2