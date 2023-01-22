execute store result score $noidle ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Noidle
execute store result score $hold_item_type ui_temp run data get entity @s SelectedItem.tag.tmw.gun.HoldItemType

#誰かがid:255持ったら各自に実行する
    execute if score $noidle ui_temp matches 0 run function ui:tmw/255/player/carrot_on_the_stick/idling.main
    execute if score $hold_item_type ui_temp matches 0 if score $noidle ui_temp matches 1 run function ui:tmw/255/player/crossbow/main
    execute if score $hold_item_type ui_temp matches 1 if score $noidle ui_temp matches 1 run function ui:tmw/255/player/carrot_on_the_stick/main
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-1}}}}] run function ui:tmw/255/player/resource/-1
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-2}}}}] run function ui:tmw/255/player/resource/-2
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-3}}}}] run function ui:tmw/255/player/resource/-3
