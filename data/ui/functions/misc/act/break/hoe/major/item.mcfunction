# クワを使う標準準備動作

#
    scoreboard players set $success ui_temp 0
    scoreboard players set $xp ui_temp 0
    scoreboard players operation $id ui_temp = @s ui_id

#
    execute if data entity @s Item{id:"minecraft:wheat_seeds"} store success score $success ui_temp run scoreboard players set $xp ui_temp 30
    execute if data entity @s Item{id:"minecraft:pumpkin"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:melon_slice"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:melon"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:cocoa_beans"} store success score $success ui_temp run scoreboard players set $xp ui_temp 450
    execute if data entity @s Item{id:"minecraft:sugar_cane"} store success score $success ui_temp run scoreboard players set $xp ui_temp 150
    execute if data entity @s Item{id:"minecraft:cactus"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:potato"} store success score $success ui_temp run scoreboard players set $xp ui_temp 450
    execute if data entity @s Item{id:"minecraft:carrot"} store success score $success ui_temp run scoreboard players set $xp ui_temp 450
    execute if data entity @s Item{id:"minecraft:wheat"} store success score $success ui_temp run scoreboard players set $xp ui_temp 450
    execute if data entity @s Item{id:"minecraft:nether_wart"} store success score $success ui_temp run scoreboard players set $xp ui_temp 450
    execute if data entity @s Item{id:"minecraft:red_mushroom"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1000
    execute if data entity @s Item{id:"minecraft:brown_mushroom"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1000
    execute if data entity @s Item{id:"minecraft:shroomlight"} store success score $success ui_temp run scoreboard players set $xp ui_temp 150

#
    execute if score $success ui_temp matches 1 run function ui:level/harv/checked

#
    tag @s remove ui_drop_breaked
    tag @s remove ui_drop_harvd
