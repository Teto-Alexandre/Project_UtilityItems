#レシピを参照して必要素材と完成品をロード
    #アイテム検知でレシピ情報
        scoreboard players set @s ui_i_recipe 0
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal"}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:iron_ingot"}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gold_ingot"}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:emerald"}]} run scoreboard players set @s ui_i_recipe 5
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:redstone"}]} run scoreboard players set @s ui_i_recipe 6
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:lapis_lazuli"}]} run scoreboard players set @s ui_i_recipe 7
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 8
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:ice"}]} run scoreboard players set @s ui_i_recipe 9
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:copper_ingot"}]} run scoreboard players set @s ui_i_recipe 10
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:glowstone_dust"}]} run scoreboard players set @s ui_i_recipe 11
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:quartz"}]} run scoreboard players set @s ui_i_recipe 12
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:snowball"}]} run scoreboard players set @s ui_i_recipe 13
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:sand"}]} run scoreboard players set @s ui_i_recipe 14
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:red_sand"}]} run scoreboard players set @s ui_i_recipe 15
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s ui_i_recipe 16
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:bone_meal"}]} run scoreboard players set @s ui_i_recipe 17
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_shard"}]} run scoreboard players set @s ui_i_recipe 18
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:packed_ice"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:snow_block"}]} run scoreboard players set @s ui_i_recipe 31
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s ui_i_recipe 41
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gold_nugget"}]} run scoreboard players set @s ui_i_recipe 42
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1010}}}]} run scoreboard players set @s ui_i_recipe 43
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal_block"}]} run scoreboard players set @s ui_i_recipe 51
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 52
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1016}}}]} run scoreboard players set @s ui_i_recipe 53
    #レシピ情報をもとに作業時間を設定
        execute if entity @s[scores={ui_i_recipe=1..10}] run scoreboard players set @s ui_i_ctt 2000
        execute if entity @s[scores={ui_i_recipe=11..20}] run scoreboard players set @s ui_i_ctt 1200
        execute if entity @s[scores={ui_i_recipe=21..30}] run scoreboard players set @s ui_i_ctt 4000
        execute if entity @s[scores={ui_i_recipe=31..40}] run scoreboard players set @s ui_i_ctt 2000
        execute if entity @s[scores={ui_i_recipe=41..50}] run scoreboard players set @s ui_i_ctt 1200
        execute if entity @s[scores={ui_i_recipe=51..60}] run scoreboard players set @s ui_i_ctt 20000
    #レシピ情報をもとに必要数を設定
        scoreboard players set @s ui_i_conitem 9
        execute if entity @s[scores={ui_i_recipe=11..20}] run scoreboard players set @s ui_i_conitem 4
        execute if entity @s[scores={ui_i_recipe=31}] run scoreboard players set @s ui_i_conitem 1
        execute if entity @s[scores={ui_i_recipe=53}] run scoreboard players set @s ui_i_conitem 64
    #レシピ情報をもとに生成数を設定
        execute if entity @s[scores={ui_i_recipe=1..}] run scoreboard players set @s ui_i_resitem 1