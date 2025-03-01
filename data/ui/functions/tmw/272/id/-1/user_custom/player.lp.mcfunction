execute if data storage cg_custom_temp: advanced_value[0].initial run function ui:tmw/272/id/-1/user_custom/macro/set_init with storage cg_custom_temp: advanced_value[0]
execute unless data storage cg_custom_temp: advanced_value[0].initial run function ui:tmw/272/id/-1/user_custom/macro/set0 with storage cg_custom_temp: advanced_value[0]

data remove storage cg_custom_temp: advanced_value[0]
scoreboard players remove $custom_count ui_temp 1
execute if score $custom_count ui_temp matches 1.. run function ui:tmw/272/id/-1/user_custom/player.lp
