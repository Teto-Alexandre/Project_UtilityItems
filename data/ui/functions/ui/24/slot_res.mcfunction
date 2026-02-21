# ページ管理  
execute unless score $slot_res ui_temp matches -1 run data modify storage ui:temp temp set from storage access_chest: Items
#tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
execute if score $slot_res ui_temp matches 0.. if score $temp ui_temp matches 2.. run function ui:ui/24/menu/extract
execute if score $slot_res ui_temp matches 0.. run data modify storage ui:temp temp_trim set from storage ui:temp temp[0]
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 1.. run function ui:ui/24/each/extract
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches 0 if entity @s[tag=!ui_24_1_readonly] run function ui:ui/24/each/push
execute if score $slot_res ui_temp matches 0.. run function ui:ui/24/click
#execute if score $slot_res ui_temp matches 0.. run tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].Items"}]
execute if score $slot_res ui_temp matches 0.. run data modify storage ui:temp temp set from storage access_chest: Items
execute if score $slot_res ui_temp matches 0.. run scoreboard players operation $temp ui_temp = @s ui_is
execute if score $slot_res ui_temp matches 0.. run scoreboard players operation $temp2 ui_temp = @s ui_is2
execute if score $slot_res ui_temp matches 0.. if score $temp ui_temp matches 2.. run function ui:ui/24/menu/extract
execute if score $slot_res ui_temp matches 0.. if score $temp2 ui_temp matches -1 run function ui:ui/24/menu/1
execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 run function ui:ui/24/menu/9
execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh
execute if score $slot_res ui_temp matches 0.. unless score @s ui_is matches 9 if score $temp2 ui_temp matches 1.. run function ui:ui/24/each/extract
execute if score $slot_res ui_temp matches 0.. unless score @s ui_is matches 9 if score $temp2 ui_temp matches 0 run function ui:ui/24/each/1
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 0 run function ui:ui/24/each/search_results/0
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 1 run function ui:ui/24/each/search_results/1
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 2 run function ui:ui/24/each/search_results/2
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 3 run function ui:ui/24/each/search_results/3
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 4 run function ui:ui/24/each/search_results/4
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 5 run function ui:ui/24/each/search_results/5
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 6 run function ui:ui/24/each/search_results/6
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 7 run function ui:ui/24/each/search_results/7
#execute if score $slot_res ui_temp matches 0.. if score @s ui_is matches 9 if score @s ui_is2 matches 8 run function ui:ui/24/each/search_results/8
execute if score $slot_res ui_temp matches -2 if score @s ui_is matches 9 run function ui:ui/24/search/answer
execute if score $slot_res ui_temp matches -2 if score @s ui_is matches 9 run function ui:ui/24/menu/9to
execute if score $slot_res ui_temp matches -2 if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 run scoreboard players add $ui_24_search_name_or_lore ui_temp 1
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 if score $ui_24_search_name_or_lore ui_temp matches 4.. run scoreboard players set $ui_24_search_name_or_lore ui_temp 0
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 unless score $ui_24_search_name_or_lore ui_temp matches 1.. run tellraw @p [{"text":"説明文検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 if score $ui_24_search_name_or_lore ui_temp matches 1 run tellraw @p [{"text":"名前検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 if score $ui_24_search_name_or_lore ui_temp matches 2 run tellraw @p [{"text":"アイテムid検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 if score $ui_24_search_name_or_lore ui_temp matches 3 run tellraw @p [{"text":"コスト検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 run function ui:ui/24/menu/9to
execute if score $slot_res ui_temp matches -3 if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh
execute if score $slot_res ui_temp matches -4 if score @s ui_is matches 9 run function ui:ui/24/menu/9to
execute if score $slot_res ui_temp matches -4 if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 run scoreboard players add $ui_24_search_or_and ui_temp 1
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 if score $ui_24_search_or_and ui_temp matches 2.. run scoreboard players set $ui_24_search_or_and ui_temp 0
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 unless score $ui_24_search_or_and ui_temp matches 1.. run tellraw @p [{"text":"OR検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 if score $ui_24_search_or_and ui_temp matches 1 run tellraw @p [{"text":"AND検索を行います","color": "gray"}]
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 run function ui:ui/24/menu/9to
execute if score $slot_res ui_temp matches -5 if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 run scoreboard players add $ui_24_re_search ui_temp 1
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 if score $ui_24_re_search ui_temp matches 2.. run scoreboard players set $ui_24_re_search ui_temp 0
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 unless score $ui_24_re_search ui_temp matches 1.. run tellraw @p [{"text":"通常検索モードになりました(全カードから検索します)","color": "gray"}]
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 if score $ui_24_re_search ui_temp matches 1 run tellraw @p [{"text":"再検索モードになりました(現在の検索結果から更に検索します)","color": "gray"}]
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 run function ui:ui/24/menu/9to
execute if score $slot_res ui_temp matches -6 if score @s ui_is matches 9 run function ui:ui/24/each/search_results/refresh

execute unless score $slot_res ui_temp matches -1 run data remove storage ui:temp temp
execute unless score $slot_res ui_temp matches -1 run data remove storage ui:temp temp2
execute unless score $slot_res ui_temp matches -1 run data remove storage ui:temp temp_trim

# 保存
execute if score $slot_res ui_temp matches 0.. run data modify storage access_chest: Items_Right set from block ~ ~ ~ Items
execute if score $slot_res ui_temp matches 0.. run data modify storage access_chest: Items_Left set from block ^ ^ ^1 Items
