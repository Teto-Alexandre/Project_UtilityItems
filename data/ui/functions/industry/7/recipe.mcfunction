#レシピを参照して必要素材と完成品をロード
    #アイテム検知でレシピ情報
        scoreboard players set @s ui_i_recipe 0
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal_ore"}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_coal_ore"}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:iron_ore"}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_iron_ore"}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gold_ore"}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_gold_ore"}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:nether_gold_ore"}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:diamond_ore"}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_diamond_ore"}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:emerald_ore"}]} run scoreboard players set @s ui_i_recipe 5
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_emerald_ore"}]} run scoreboard players set @s ui_i_recipe 5
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:redstone_ore"}]} run scoreboard players set @s ui_i_recipe 6
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_redstone_ore"}]} run scoreboard players set @s ui_i_recipe 6
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:lapis_ore"}]} run scoreboard players set @s ui_i_recipe 7
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_lapis_ore"}]} run scoreboard players set @s ui_i_recipe 7
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:glowstone"}]} run scoreboard players set @s ui_i_recipe 8
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players set @s ui_i_recipe 9
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:quartz_block"}]} run scoreboard players set @s ui_i_recipe 9
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:copper_ore"}]} run scoreboard players set @s ui_i_recipe 10
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:deepslate_copper_ore"}]} run scoreboard players set @s ui_i_recipe 10
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:stone"}]} run scoreboard players set @s ui_i_recipe 11
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:cobblestone"}]} run scoreboard players set @s ui_i_recipe 12
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gravel"}]} run scoreboard players set @s ui_i_recipe 13
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:sandstone"}]} run scoreboard players set @s ui_i_recipe 14
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:red_sandstone"}]} run scoreboard players set @s ui_i_recipe 15
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:ice"}]} run scoreboard players set @s ui_i_recipe 16
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:netherrack"}]} run scoreboard players set @s ui_i_recipe 17
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:apple"}]} run scoreboard players set @s ui_i_recipe 18
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:dirt"}]} run scoreboard players set @s ui_i_recipe 19
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:red_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:blue_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:cyan_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gray_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:lime_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:pink_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:black_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:brown_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:green_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:orange_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:purple_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:white_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:yellow_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:magenta_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:light_blue_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:light_gray_wool"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:blaze_rod"}]} run scoreboard players set @s ui_i_recipe 22
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:bone"}]} run scoreboard players set @s ui_i_recipe 23
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:obsidian"}]} run scoreboard players set @s ui_i_recipe 31
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_block"}]} run scoreboard players set @s ui_i_recipe 41
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1004}}}]} run scoreboard players set @s ui_i_recipe 51
    #レシピ情報をもとに作業時間を設定
        execute if entity @s[scores={ui_i_recipe=1..10}] run scoreboard players set @s ui_i_ctt 3000
        execute if entity @s[scores={ui_i_recipe=11..30}] run scoreboard players set @s ui_i_ctt 2000
        execute if entity @s[scores={ui_i_recipe=31..40}] run scoreboard players set @s ui_i_ctt 12000
        execute if entity @s[scores={ui_i_recipe=41..50}] run scoreboard players set @s ui_i_ctt 2000
        execute if entity @s[scores={ui_i_recipe=51..60}] run scoreboard players set @s ui_i_ctt 3000
    #レシピ情報をもとに必要数を設定
        scoreboard players set @s ui_i_conitem 1
    #レシピ情報をもとに生成数を設定
        execute if score @s ui_i_recipe matches 1..5 run scoreboard players set @s ui_i_resitem 2
        execute if score @s ui_i_recipe matches 6..7 run scoreboard players set @s ui_i_resitem 6
        execute if score @s ui_i_recipe matches 8..9 run scoreboard players set @s ui_i_resitem 4
        execute if score @s ui_i_recipe matches 10 run scoreboard players set @s ui_i_resitem 8
        execute if score @s ui_i_recipe matches 11..20 run scoreboard players set @s ui_i_resitem 1
        execute if score @s ui_i_recipe matches 21..30 run scoreboard players set @s ui_i_resitem 3
        execute if score @s ui_i_recipe matches 31..40 run scoreboard players set @s ui_i_resitem 1
        execute if score @s ui_i_recipe matches 41..50 run scoreboard players set @s ui_i_resitem 4
        execute if score @s ui_i_recipe matches 51..60 run scoreboard players set @s ui_i_resitem 5
