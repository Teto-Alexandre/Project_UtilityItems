scoreboard players operation $mod ui_calc1 = $count_mod ui_temp
function ui:common/rand

execute if score $rand ui_calc1 matches 0.. run function ui:tmw/272/oh/2/open/mod

scoreboard players remove $count_cards ui_temp 1
execute if score $count_cards ui_temp matches 1.. if score $count_list ui_temp matches 1.. run function ui:tmw/272/oh/2/open/each_cards
