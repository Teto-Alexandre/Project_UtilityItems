# 斧を使う標準準備動作

#
    scoreboard players set $success ui_temp 0
    scoreboard players set $xp ui_temp 0
    scoreboard players operation $id ui_temp = @s ui_id

#
    execute if data entity @s Item{id:"minecraft:acacia_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:birch_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:dark_oak_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:oak_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:jungle_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:spruce_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:red_mushroom"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1500
    execute if data entity @s Item{id:"minecraft:brown_mushroom"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1500
    execute if data entity @s Item{id:"minecraft:crimson_stem"} store success score $success ui_temp run scoreboard players set $xp ui_temp 500
    execute if data entity @s Item{id:"minecraft:warped_stem"} store success score $success ui_temp run scoreboard players set $xp ui_temp 500
    execute if data entity @s Item{id:"minecraft:mangrove_log"} store success score $success ui_temp run scoreboard players set $xp ui_temp 300

#
    execute if score $success ui_temp matches 1 run function ui:level/cut/checked

#
    tag @s remove ui_drop_breaked
    tag @s remove ui_drop_cutted
