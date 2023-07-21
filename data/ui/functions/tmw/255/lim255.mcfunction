execute store result score $noidle ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Noidle
execute store result score $hold_item_type ui_temp run data get entity @s SelectedItem.tag.tmw.gun.HoldItemType
execute store result score $tmw.type ui_temp run data get entity @s SelectedItem.tag.tmw.type
#tellraw @a [{"score":{"name": "$tmw.type","objective": "ui_temp"}}]

#誰かがid:255持ったら各自に実行する
    execute if score $tmw.type ui_temp matches 1 if score $noidle ui_temp matches 0 run function ui:tmw/255/player/carrot_on_the_stick/idling.main
    execute if score $tmw.type ui_temp matches 1 if score $hold_item_type ui_temp matches 0 if score $noidle ui_temp matches 1 run function ui:tmw/255/player/crossbow/main
    execute if score $tmw.type ui_temp matches 1 if score $hold_item_type ui_temp matches 1 if score $noidle ui_temp matches 1 run function ui:tmw/255/player/carrot_on_the_stick/main
    execute if score $tmw.type ui_temp matches -1 run function ui:tmw/255/player/resource/-1
    execute if score $tmw.type ui_temp matches -2 run function ui:tmw/255/player/resource/-2
    execute if score $tmw.type ui_temp matches -3 run function ui:tmw/255/player/resource/-3
