summon minecraft:marker ~ ~ ~ {Tags:["ui_temp_vray"]}
execute anchored eyes at @s run teleport @e[tag=ui_temp_vray] ^-0.2 ^-0.13 ^ ~ ~
execute as @e[tag=ui_temp_vray] at @s facing entity @e[tag=ui_temp_activationray,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ui_temp_vray] at @s run tp @s ^ ^ ^0.2

#tellraw @a {"text":"かげ"}

playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 2

scoreboard players set $range2 ui_temp 200

execute as @e[tag=ui_temp_vray] at @s run function ui:tmw/17/id/1/vraymove
kill @e[tag=ui_temp_vray]

scoreboard players reset $range2 ui_temp
