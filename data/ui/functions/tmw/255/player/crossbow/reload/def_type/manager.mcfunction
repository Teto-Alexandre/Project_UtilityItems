# アイテム払い
execute if score $reloadtype ui_temp matches 1 run function ui:tmw/255/player/crossbow/reload/def_type/1/item
# ROB用EN払い
execute if score $reloadtype ui_temp matches 2 run function ui:tmw/255/player/crossbow/reload/def_type/2/item
# HP払い
execute if score $reloadtype ui_temp matches 3 run function ui:tmw/255/player/crossbow/reload/def_type/3/item
