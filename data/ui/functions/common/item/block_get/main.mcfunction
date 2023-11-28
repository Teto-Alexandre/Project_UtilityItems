#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
execute if score $num ui_temp matches 0 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:0b}]
execute if score $num ui_temp matches 1 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:1b}]
execute if score $num ui_temp matches 2 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:2b}]
execute if score $num ui_temp matches 3 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:3b}]
execute if score $num ui_temp matches 4 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:4b}]
execute if score $num ui_temp matches 5 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:5b}]
execute if score $num ui_temp matches 6 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:6b}]
execute if score $num ui_temp matches 7 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:7b}]
execute if score $num ui_temp matches 8 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:8b}]
execute if score $num ui_temp matches 9 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:9b}]
execute if score $num ui_temp matches 10 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:10b}]
execute if score $num ui_temp matches 11 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:11b}]
execute if score $num ui_temp matches 12 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:12b}]
execute if score $num ui_temp matches 13 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:13b}]
execute if score $num ui_temp matches 14 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:14b}]
execute if score $num ui_temp matches 15 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:15b}]
execute if score $num ui_temp matches 16 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:16b}]
execute if score $num ui_temp matches 17 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:17b}]
execute if score $num ui_temp matches 18 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:18b}]
execute if score $num ui_temp matches 19 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:19b}]
execute if score $num ui_temp matches 20 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:20b}]
execute if score $num ui_temp matches 21 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:21b}]
execute if score $num ui_temp matches 22 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:22b}]
execute if score $num ui_temp matches 23 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:23b}]
execute if score $num ui_temp matches 24 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:24b}]
execute if score $num ui_temp matches 25 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:25b}]
execute if score $num ui_temp matches 26 store success score $common_success.item ui_temp run data modify storage ui:common input.Item set from block ~ ~ ~ Items.[{Slot:26b}]

#execute if score $common_success.item ui_temp matches 0 run data modify storage ui:common input.Item set value {id:"minecraft:air",Count:1b}
