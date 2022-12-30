execute store result score $noidle ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Noidle

#誰かがid:255持ったら各自に実行する
    execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] if score $noidle ui_temp matches 1 run function ui:tmw/255/player/crossbow/main
    execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score $noidle ui_temp matches 1 run function ui:tmw/255/player/carrot_on_the_stick/main
    execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] if score $noidle ui_temp matches 0 run function ui:tmw/255/player/carrot_on_the_stick/idling.main
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-1}}}}] run function ui:tmw/255/player/resource/-1
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-2}}}}] run function ui:tmw/255/player/resource/-2
    execute as @s[nbt={SelectedItem:{tag:{tmw:{type:-3}}}}] run function ui:tmw/255/player/resource/-3
