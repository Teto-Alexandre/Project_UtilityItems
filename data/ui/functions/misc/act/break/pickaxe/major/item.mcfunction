# ツルハシを使う標準準備動作

#
    scoreboard players set $success ui_temp 0
    scoreboard players set $xp ui_temp 0
    scoreboard players operation $id ui_temp = @s ui_id

#
    execute if data entity @s Item{id:"minecraft:cobblestone"} store success score $success ui_temp run scoreboard players set $xp ui_temp 20
    execute if data entity @s Item{id:"minecraft:stone"} store success score $success ui_temp run scoreboard players set $xp ui_temp 20
    execute if data entity @s Item{id:"minecraft:deepslate"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:cobbled_deepslate"} store success score $success ui_temp run scoreboard players set $xp ui_temp 100
    execute if data entity @s Item{id:"minecraft:andesite"} store success score $success ui_temp run scoreboard players set $xp ui_temp 30
    execute if data entity @s Item{id:"minecraft:granite"} store success score $success ui_temp run scoreboard players set $xp ui_temp 30
    execute if data entity @s Item{id:"minecraft:diorite"} store success score $success ui_temp run scoreboard players set $xp ui_temp 30
    execute if data entity @s Item{id:"minecraft:calcite"} store success score $success ui_temp run scoreboard players set $xp ui_temp 60
    execute if data entity @s Item{id:"minecraft:tuff"} store success score $success ui_temp run scoreboard players set $xp ui_temp 30
    execute if data entity @s Item{id:"minecraft:dripstone_block"} store success score $success ui_temp run scoreboard players set $xp ui_temp 40
    execute if data entity @s Item{id:"minecraft:netherrack"} store success score $success ui_temp run scoreboard players set $xp ui_temp 12
    execute if data entity @s Item{id:"minecraft:basalt"} store success score $success ui_temp run scoreboard players set $xp ui_temp 40
    execute if data entity @s Item{id:"minecraft:end_stone"} store success score $success ui_temp run scoreboard players set $xp ui_temp 60
    execute if data entity @s Item{id:"minecraft:obsidian"} store success score $success ui_temp run scoreboard players set $xp ui_temp 500
    execute if data entity @s Item{id:"minecraft:coal"} store success score $success ui_temp run scoreboard players set $xp ui_temp 200
    execute if data entity @s Item{id:"minecraft:raw_copper"} store success score $success ui_temp run scoreboard players set $xp ui_temp 400
    execute if data entity @s Item{id:"minecraft:raw_iron"} store success score $success ui_temp run scoreboard players set $xp ui_temp 600
    execute if data entity @s Item{id:"minecraft:raw_gold"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1000
    execute if data entity @s Item{id:"minecraft:gold_nugget"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1000
    execute if data entity @s Item{id:"minecraft:diamond"} store success score $success ui_temp run scoreboard players set $xp ui_temp 25000
    execute if data entity @s Item{id:"minecraft:redstone"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1500
    execute if data entity @s Item{id:"minecraft:lapis_lazuli"} store success score $success ui_temp run scoreboard players set $xp ui_temp 2000
    execute if data entity @s Item{id:"minecraft:emerald"} store success score $success ui_temp run scoreboard players set $xp ui_temp 15000
    execute if data entity @s Item{id:"minecraft:quartz"} store success score $success ui_temp run scoreboard players set $xp ui_temp 2000
    execute if data entity @s Item{id:"minecraft:amethyst_shard"} store success score $success ui_temp run scoreboard players set $xp ui_temp 6000
    execute if data entity @s Item{id:"minecraft:glowstone_dust"} store success score $success ui_temp run scoreboard players set $xp ui_temp 1000

#
    execute if score $success ui_temp matches 1 run function ui:level/mine/checked

#
    tag @s remove ui_drop_breaked
    tag @s remove ui_drop_mined