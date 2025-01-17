data modify storage cg_custom_temp: advanced_value set from storage cg_custom: advanced_value
execute store result score $custom_count ui_temp run data get storage cg_custom_temp: advanced_value

execute if score $custom_count ui_temp matches 1.. run function ui:tmw/272/id/-1/user_custom/turn.lp

data remove storage cg_custom_temp: advanced_value
data remove storage cg_custom_temp: temp