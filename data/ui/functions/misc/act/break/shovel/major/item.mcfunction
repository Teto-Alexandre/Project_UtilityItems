# シャベルを使う標準準備動作

#
    scoreboard players set $success ui_temp 0
    scoreboard players set $xp ui_temp 0
    scoreboard players operation $id ui_temp = @s ui_id

#
    execute if data entity @s Item{id:"minecraft:dirt"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:grass_block"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:gravel"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:sand"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:coarse_dirt"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:sand"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:red_sand"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:snowball"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:snow_block"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:clay_ball"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:clay"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:soul_sand"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:soul_soil"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100

#
    execute if score $success ui_temp matches 1 run function ui:level/dig/checked

#
    tag @s remove ui_drop_breaked
    tag @s remove ui_drop_dug
