#tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"temp[0][0][0][0].id"}]
execute unless score $ui_24_search_name_or_lore ui_temp matches 1.. as @a[tag=ui_23_searcher] run function ui:ui/23/template/lore_condition/
execute unless score $ui_24_search_name_or_lore ui_temp matches 1.. unless entity @a[tag=ui_23_searcher] run function ui:ui/23/template/lore_condition/

execute if score $ui_24_search_name_or_lore ui_temp matches 1 as @a[tag=ui_23_searcher] run function ui:ui/23/template/name_condition/
execute if score $ui_24_search_name_or_lore ui_temp matches 1 unless entity @a[tag=ui_23_searcher] run function ui:ui/23/template/name_condition/

execute if score $ui_24_search_name_or_lore ui_temp matches 2 as @a[tag=ui_23_searcher] run function ui:ui/23/template/item_id_condition/
execute if score $ui_24_search_name_or_lore ui_temp matches 2 unless entity @a[tag=ui_23_searcher] run function ui:ui/23/template/item_id_condition/
