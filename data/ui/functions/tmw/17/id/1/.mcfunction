execute store result score $range ui_temp run data get entity @s SelectedItem.tag.tmw.range

#tellraw @a {"text":"発射"}

summon marker ~ ~ ~ {Tags:["ui_temp_activationray"]}
execute anchored eyes at @s run teleport @e[tag=ui_temp_activationray] ^ ^ ^ ~ ~

execute as @e[tag=ui_temp_activationray] at @s run function ui:tmw/17/id/1/raymove

kill @e[tag=ui_temp_activationray]


scoreboard players reset $range ui_temp