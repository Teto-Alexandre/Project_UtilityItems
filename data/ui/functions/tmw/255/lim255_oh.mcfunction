execute store result score $noidle ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.gun.now.Noidle
execute store result score $tmw.type ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.type
#tellraw @a [{"score":{"name": "$tmw.type","objective": "ui_temp"}}]

#誰かがid:255持ったら各自に実行する
    execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] if score $noidle ui_temp matches 1 run function ui:tmw/255/player/crossbow/main_oh
