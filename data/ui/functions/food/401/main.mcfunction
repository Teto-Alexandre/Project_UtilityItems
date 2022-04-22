tag @s[nbt={Dimension:"minecraft:overworld"}] add tmw_401_1
tag @s[nbt={Dimension:"ui:dream"}] add tmw_401_2

execute at @s[tag=tmw_401_1] in ui:dream run teleport @s ~ ~ ~
execute at @s[tag=tmw_401_2] in minecraft:overworld run teleport @s ~ ~ ~

execute at @s[tag=tmw_401_1] in ui:dream run spreadplayers ~ ~ 1 5 false @s
execute at @s[tag=tmw_401_2] in minecraft:overworld run spreadplayers ~ ~ 1 5 false @s

effect give @s[tag=tmw_401_1] resistance 15 9 true
effect give @s[tag=tmw_401_2] resistance 15 9 true

tag @s[tag=tmw_401_1] remove tmw_401_1
tag @s[tag=tmw_401_2] remove tmw_401_2
