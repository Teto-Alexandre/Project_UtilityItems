#
execute run function ui:tmw/255/player/crossbow/changed/bar_1

#
execute if score $hand ui_temp matches 0 if score $bullets ui_temp matches 0 unless score $cooltime ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:tmw255/changed/1none
execute if score $hand ui_temp matches 1 if score $bullets ui_temp matches 0 unless score $cooltime ui_temp matches 1.. run item modify entity @s weapon.offhand ui:tmw255/changed/1none
execute if score $hand ui_temp matches 0 unless score $bullets ui_temp matches 0 unless score $cooltime ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:tmw255/changed/1ready
execute if score $hand ui_temp matches 1 unless score $bullets ui_temp matches 0 unless score $cooltime ui_temp matches 1.. run item modify entity @s weapon.offhand ui:tmw255/changed/1ready
execute if score $hand ui_temp matches 0 if score $cooltime ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:tmw255/changed/1wait
execute if score $hand ui_temp matches 1 if score $cooltime ui_temp matches 1.. run item modify entity @s weapon.offhand ui:tmw255/changed/1wait
