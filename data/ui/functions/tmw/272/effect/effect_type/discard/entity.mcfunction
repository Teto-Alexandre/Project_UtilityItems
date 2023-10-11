# カードを捨てるテスト - エンティティ用
function oh_my_dat:please
execute store result score $hand_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0].tag{IsCG1:1} run scoreboard players operation $hand_count ui_temp *= #-1 ui_num

execute if score $hand_count ui_temp matches 1.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]
execute if score $hand_count ui_temp matches 1.. run scoreboard players set $condition_checker_temp ui_temp 1

execute if score $hand_count ui_temp matches ..-2 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[1]
execute if score $hand_count ui_temp matches ..-2 run scoreboard players set $condition_checker_temp ui_temp 1

scoreboard players reset $hand_count ui_temp