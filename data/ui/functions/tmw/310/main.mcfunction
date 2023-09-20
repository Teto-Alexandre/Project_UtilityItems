execute store result score $slot ui_temp run data get entity @s SelectedItemSlot 1

execute as @s unless data entity @s SelectedItem.tag.Items run function ui:tmw/310/restore
execute as @s[tag=tmw_drop_n] at @s run function ui:tmw/310/act_q
execute as @s[tag=tmw_oh_n] at @s run function ui:tmw/310/act_f

execute unless score $slot ui_temp matches 8 at @s run summon chest_minecart ~ 1000 ~ {Tags:["ui_temp_chest"]}
execute unless score $slot ui_temp matches 8 run item replace entity @e[tag=ui_temp_chest,limit=1] container.0 from entity @s hotbar.8
execute unless score $slot ui_temp matches 8 run item replace entity @s hotbar.8 from entity @s weapon.mainhand
execute unless score $slot ui_temp matches 8 run item replace entity @s weapon.mainhand from entity @e[tag=ui_temp_chest,limit=1] container.0
execute unless score $slot ui_temp matches 8 run teleport @e[tag=ui_temp_chest,limit=1] ~ -300 ~
execute unless score $slot ui_temp matches 8 run kill @e[tag=ui_temp_chest,limit=1]