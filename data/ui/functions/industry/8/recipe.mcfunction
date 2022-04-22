#レシピを参照して必要素材と完成品をロード
    #アイテム検知でレシピ情報
        scoreboard players set @s ui_i_recipe 0
        #エネルギーカートリッジ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1001}}}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1002}}}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1004}}}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:1}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1001}}}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:1}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1002}}}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:1}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:1}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1004}}}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_shard"}]} run scoreboard players set @s ui_i_recipe 101
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:2}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_shard"}]} run scoreboard players set @s ui_i_recipe 101
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_block"}]} run scoreboard players set @s ui_i_recipe 102
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:2}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_block"}]} run scoreboard players set @s ui_i_recipe 102
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:budding_amethyst"}]} run scoreboard players set @s ui_i_recipe 103
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:2}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:budding_amethyst"}]} run scoreboard players set @s ui_i_recipe 103
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{amount:0}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1015}}}]} run scoreboard players set @s ui_i_recipe 104
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:303,energy:{type:2}}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1015}}}]} run scoreboard players set @s ui_i_recipe 104
        #鉄の剣
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:iron_sword"}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:iron_sword",tag:{tmw:{id:1005}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 11
        #石のツルハシ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:stone_pickaxe"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 12
        #鉄のツルハシ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:iron_pickaxe"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1011}}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:iron_pickaxe",tag:{tmw:{id:219,type:2}}}]} run scoreboard players set @s ui_i_recipe 13
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:iron_pickaxe"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1012}}}]} run scoreboard players set @s ui_i_recipe 14
        #マキナフィッシャー
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{tmw:{id:218,type:1}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:nether_star"}]} run scoreboard players set @s ui_i_recipe 15
        #耐久値が低い
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{Damage:0}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{Damage:0}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,tag:{tmw:{id:1011}}}]} run scoreboard players set @s ui_i_recipe 22
        #矢
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:arrow"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 1001
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:arrow"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:tnt"}]} run scoreboard players set @s ui_i_recipe 1002
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:arrow"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:nether_star"}]} run scoreboard players set @s ui_i_recipe 1003
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:arrow"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:dragon_egg"}]} run scoreboard players set @s ui_i_recipe 1004
        #水入り瓶
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:potion"}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:potion",tag:{tmw:{id:221}}}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:crying_obsidian"}]} run scoreboard players set @s ui_i_recipe 1101
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:potion"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:blue_ice"}]} run scoreboard players set @s ui_i_recipe 1102
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:potion"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:magma_block"}]} run scoreboard players set @s ui_i_recipe 1103
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,id:"minecraft:potion"}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:amethyst_block"}]} run scoreboard players set @s ui_i_recipe 1104
    #レシピ情報をもとに作業時間を設定
        execute if entity @s[scores={ui_i_recipe=1}] run scoreboard players set @s ui_i_ctt 100
        execute if entity @s[scores={ui_i_recipe=2..3}] run scoreboard players set @s ui_i_ctt 200
        execute if entity @s[scores={ui_i_recipe=4}] run scoreboard players set @s ui_i_ctt 400
        execute if entity @s[scores={ui_i_recipe=101}] run scoreboard players set @s ui_i_ctt 100
        execute if entity @s[scores={ui_i_recipe=102}] run scoreboard players set @s ui_i_ctt 300
        execute if entity @s[scores={ui_i_recipe=103}] run scoreboard players set @s ui_i_ctt 400
        execute if entity @s[scores={ui_i_recipe=104}] run scoreboard players set @s ui_i_ctt 100
        execute if entity @s[scores={ui_i_recipe=11..20}] run scoreboard players set @s ui_i_ctt 3000
        execute if entity @s[scores={ui_i_recipe=21..30}] run scoreboard players set @s ui_i_ctt 100
        execute if entity @s[scores={ui_i_recipe=1001..1200}] run scoreboard players set @s ui_i_ctt 6000
    #レシピ情報をもとに必要数を設定
        scoreboard players set @s[scores={ui_i_recipe=1..12}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=13..14}] ui_i_conitem 3
        scoreboard players set @s[scores={ui_i_recipe=15..1000}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=1001..1002}] ui_i_conitem 16
        scoreboard players set @s[scores={ui_i_recipe=1003..}] ui_i_conitem 1
    #レシピ情報をもとに生成数を設定
        execute if score @s ui_i_recipe matches 1 run scoreboard players set @s ui_i_resitem 1
        execute if score @s ui_i_recipe matches 2 run scoreboard players set @s ui_i_resitem 5
        execute if score @s ui_i_recipe matches 3 run scoreboard players set @s ui_i_resitem 3
        execute if score @s ui_i_recipe matches 4 run scoreboard players set @s ui_i_resitem 20
        execute if score @s ui_i_recipe matches 101 run scoreboard players set @s ui_i_resitem 1
        execute if score @s ui_i_recipe matches 102 run scoreboard players set @s ui_i_resitem 4
        execute if score @s ui_i_recipe matches 103 run scoreboard players set @s ui_i_resitem 20
        execute if score @s ui_i_recipe matches 104 run scoreboard players set @s ui_i_resitem 5
        execute if score @s ui_i_recipe matches 21 run scoreboard players set @s ui_i_resitem 5
        execute if score @s ui_i_recipe matches 22 run scoreboard players set @s ui_i_resitem 2
        execute if score @s ui_i_recipe matches 1001..1200 run scoreboard players set @s ui_i_resitem 1
