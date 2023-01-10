#
function ui:tmw/255/player/crossbow/changed/bar_0

#
execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:tmw255/changed/0
execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:tmw255/changed/0
