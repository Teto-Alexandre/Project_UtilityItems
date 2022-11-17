#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
    execute store result score $durability ui_temp run data get storage ui:common input.Item.tag.Damage
    scoreboard players operation $durability ui_temp += $num ui_temp
    scoreboard players operation $durability ui_temp > #0 ui_num
    execute store result storage ui:common input.Item.tag.Damage int 1 run scoreboard players get $durability ui_temp

# 最大ダメージを算出
    scoreboard players set $durability.max ui_temp 2147483647
    execute if data storage ui:common input.Item{id:"minecraft:turtle_helmet"} run scoreboard players set $durability.max ui_temp 275
    execute if data storage ui:common input.Item{id:"minecraft:leather_helmet"} run scoreboard players set $durability.max ui_temp 55
    execute if data storage ui:common input.Item{id:"minecraft:leather_chestplate"} run scoreboard players set $durability.max ui_temp 80
    execute if data storage ui:common input.Item{id:"minecraft:leather_leggings"} run scoreboard players set $durability.max ui_temp 75
    execute if data storage ui:common input.Item{id:"minecraft:leather_boots"} run scoreboard players set $durability.max ui_temp 65
    execute if data storage ui:common input.Item{id:"minecraft:golden_helmet"} run scoreboard players set $durability.max ui_temp 77
    execute if data storage ui:common input.Item{id:"minecraft:golden_chestplate"} run scoreboard players set $durability.max ui_temp 112
    execute if data storage ui:common input.Item{id:"minecraft:golden_leggings"} run scoreboard players set $durability.max ui_temp 105
    execute if data storage ui:common input.Item{id:"minecraft:golden_boots"} run scoreboard players set $durability.max ui_temp 91
    execute if data storage ui:common input.Item{id:"minecraft:chainmail_helmet"} run scoreboard players set $durability.max ui_temp 165
    execute if data storage ui:common input.Item{id:"minecraft:chainmail_chestplate"} run scoreboard players set $durability.max ui_temp 240
    execute if data storage ui:common input.Item{id:"minecraft:chainmail_leggings"} run scoreboard players set $durability.max ui_temp 225
    execute if data storage ui:common input.Item{id:"minecraft:chainmail_boots"} run scoreboard players set $durability.max ui_temp 195
    execute if data storage ui:common input.Item{id:"minecraft:iron_helmet"} run scoreboard players set $durability.max ui_temp 165
    execute if data storage ui:common input.Item{id:"minecraft:iron_chestplate"} run scoreboard players set $durability.max ui_temp 240
    execute if data storage ui:common input.Item{id:"minecraft:iron_leggings"} run scoreboard players set $durability.max ui_temp 225
    execute if data storage ui:common input.Item{id:"minecraft:iron_boots"} run scoreboard players set $durability.max ui_temp 195
    execute if data storage ui:common input.Item{id:"minecraft:diamond_helmet"} run scoreboard players set $durability.max ui_temp 363
    execute if data storage ui:common input.Item{id:"minecraft:diamond_chestplate"} run scoreboard players set $durability.max ui_temp 528
    execute if data storage ui:common input.Item{id:"minecraft:diamond_leggings"} run scoreboard players set $durability.max ui_temp 495
    execute if data storage ui:common input.Item{id:"minecraft:diamond_boots"} run scoreboard players set $durability.max ui_temp 429
    execute if data storage ui:common input.Item{id:"minecraft:netherite_helmet"} run scoreboard players set $durability.max ui_temp 407
    execute if data storage ui:common input.Item{id:"minecraft:netherite_chestplate"} run scoreboard players set $durability.max ui_temp 592
    execute if data storage ui:common input.Item{id:"minecraft:netherite_leggings"} run scoreboard players set $durability.max ui_temp 555
    execute if data storage ui:common input.Item{id:"minecraft:netherite_boots"} run scoreboard players set $durability.max ui_temp 481
    execute if data storage ui:common input.Item{id:"minecraft:golden_sword"} run scoreboard players set $durability.max ui_temp 32
    execute if data storage ui:common input.Item{id:"minecraft:golden_shovel"} run scoreboard players set $durability.max ui_temp 32
    execute if data storage ui:common input.Item{id:"minecraft:golden_pickaxe"} run scoreboard players set $durability.max ui_temp 32
    execute if data storage ui:common input.Item{id:"minecraft:golden_axe"} run scoreboard players set $durability.max ui_temp 32
    execute if data storage ui:common input.Item{id:"minecraft:golden_hoe"} run scoreboard players set $durability.max ui_temp 32
    execute if data storage ui:common input.Item{id:"minecraft:wooden_sword"} run scoreboard players set $durability.max ui_temp 59
    execute if data storage ui:common input.Item{id:"minecraft:wooden_shovel"} run scoreboard players set $durability.max ui_temp 59
    execute if data storage ui:common input.Item{id:"minecraft:wooden_pickaxe"} run scoreboard players set $durability.max ui_temp 59
    execute if data storage ui:common input.Item{id:"minecraft:wooden_axe"} run scoreboard players set $durability.max ui_temp 59
    execute if data storage ui:common input.Item{id:"minecraft:wooden_hoe"} run scoreboard players set $durability.max ui_temp 59
    execute if data storage ui:common input.Item{id:"minecraft:stone_sword"} run scoreboard players set $durability.max ui_temp 131
    execute if data storage ui:common input.Item{id:"minecraft:stone_shovel"} run scoreboard players set $durability.max ui_temp 131
    execute if data storage ui:common input.Item{id:"minecraft:stone_pickaxe"} run scoreboard players set $durability.max ui_temp 131
    execute if data storage ui:common input.Item{id:"minecraft:stone_axe"} run scoreboard players set $durability.max ui_temp 131
    execute if data storage ui:common input.Item{id:"minecraft:stone_hoe"} run scoreboard players set $durability.max ui_temp 131
    execute if data storage ui:common input.Item{id:"minecraft:iron_sword"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:iron_shovel"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:iron_pickaxe"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:iron_axe"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:iron_hoe"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:diamond_sword"} run scoreboard players set $durability.max ui_temp 1561
    execute if data storage ui:common input.Item{id:"minecraft:diamond_shovel"} run scoreboard players set $durability.max ui_temp 1561
    execute if data storage ui:common input.Item{id:"minecraft:diamond_pickaxe"} run scoreboard players set $durability.max ui_temp 1561
    execute if data storage ui:common input.Item{id:"minecraft:diamond_axe"} run scoreboard players set $durability.max ui_temp 1561
    execute if data storage ui:common input.Item{id:"minecraft:diamond_hoe"} run scoreboard players set $durability.max ui_temp 1561
    execute if data storage ui:common input.Item{id:"minecraft:netherite_sword"} run scoreboard players set $durability.max ui_temp 2031
    execute if data storage ui:common input.Item{id:"minecraft:netherite_shovel"} run scoreboard players set $durability.max ui_temp 2031
    execute if data storage ui:common input.Item{id:"minecraft:netherite_pickaxe"} run scoreboard players set $durability.max ui_temp 2031
    execute if data storage ui:common input.Item{id:"minecraft:netherite_axe"} run scoreboard players set $durability.max ui_temp 2031
    execute if data storage ui:common input.Item{id:"minecraft:netherite_hoe"} run scoreboard players set $durability.max ui_temp 2031
    execute if data storage ui:common input.Item{id:"minecraft:fishing_rod"} run scoreboard players set $durability.max ui_temp 64
    execute if data storage ui:common input.Item{id:"minecraft:flint_and_steel"} run scoreboard players set $durability.max ui_temp 64
    execute if data storage ui:common input.Item{id:"minecraft:carrot_on_a_stick"} run scoreboard players set $durability.max ui_temp 25
    execute if data storage ui:common input.Item{id:"minecraft:shears"} run scoreboard players set $durability.max ui_temp 238
    execute if data storage ui:common input.Item{id:"minecraft:shield"} run scoreboard players set $durability.max ui_temp 336
    execute if data storage ui:common input.Item{id:"minecraft:bow"} run scoreboard players set $durability.max ui_temp 384
    execute if data storage ui:common input.Item{id:"minecraft:trident"} run scoreboard players set $durability.max ui_temp 250
    execute if data storage ui:common input.Item{id:"minecraft:elytra"} run scoreboard players set $durability.max ui_temp 432
    execute if data storage ui:common input.Item{id:"minecraft:crossbow"} run scoreboard players set $durability.max ui_temp 326
    execute if data storage ui:common input.Item{id:"minecraft:warped_fungus_on_a_stick"} run scoreboard players set $durability.max ui_temp 100

# 壊れる
    execute if score $durability ui_temp >= $durability.max ui_temp run data modify storage ui:common input.Item set value {id:"minecraft:air",Count:1b}
    execute if score $durability ui_temp >= $durability.max ui_temp run playsound entity.item.break neutral @a ~ ~ ~ 1 1
