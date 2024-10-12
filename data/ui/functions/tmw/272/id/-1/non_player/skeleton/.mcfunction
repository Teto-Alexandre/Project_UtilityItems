execute if score $list_card_count ui_temp matches 0 if score $list_card_rand ui_temp matches ..199 run function ui:tmw/272/id/-1/non_player/skeleton/only_one

scoreboard players set $mod ui_calc1 10
function ui:common/rand

execute if score $list_card_count ui_temp matches ..7 if score $list_card_rand ui_temp matches 200..449 run function ui:tmw/272/id/-1/non_player/skeleton/arrow
execute if score $list_card_count ui_temp matches ..7 if score $list_card_rand ui_temp matches 450..699 run function ui:tmw/272/id/-1/non_player/skeleton/bullet
execute if score $list_card_count ui_temp matches ..8 if score $list_card_rand ui_temp matches 700..899 run function ui:tmw/272/id/-1/non_player/skeleton/more
execute if score $list_card_count ui_temp matches ..8 if score $list_card_rand ui_temp matches 900..999 run function ui:tmw/272/id/-1/non_player/skeleton/old
execute if score $list_card_count ui_temp matches ..8 if score $list_card_rand ui_temp matches ..899 if score $rand ui_calc1 matches 0..3 run function ui:tmw/272/id/-1/non_player/skeleton/other

scoreboard players add $list_card_count ui_temp 1
execute if score $list_card_count ui_temp matches ..8 run function ui:tmw/272/id/-1/non_player/skeleton/