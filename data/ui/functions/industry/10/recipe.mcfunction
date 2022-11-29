#レシピを参照して必要素材と完成品をロード
    #アイテム検知でレシピ情報
        scoreboard players set @s ui_i_recipe 0
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:copper_ingot"},{Slot:11b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:amethyst_shard"},{Slot:11b,id:"minecraft:prismarine_crystals"}]} run scoreboard players set @s ui_i_recipe 10
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:nether_brick"},{Slot:11b,id:"minecraft:amethyst_shard"}]} run scoreboard players set @s ui_i_recipe 11
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:copper_ingot"},{Slot:11b,id:"minecraft:redstone"}]} run scoreboard players set @s ui_i_recipe 12
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1011}}},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 13
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:string"}]} run scoreboard players set @s ui_i_recipe 14
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1011}}},{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 15
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1016}}},{Slot:11b,id:"minecraft:prismarine_shard"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1017}}},{Slot:11b,id:"minecraft:dragon_egg"}]} run scoreboard players set @s ui_i_recipe 22

    #レシピ情報をもとに作業時間を設定
        scoreboard players set @s[scores={ui_i_recipe=1..}] ui_i_ctt 1000
        scoreboard players set @s[scores={ui_i_recipe=22}] ui_i_ctt 36000
    #レシピ情報をもとに必要数を設定
        scoreboard players set @s[scores={ui_i_recipe=1..10}] ui_i_conitem 2
        scoreboard players set @s[scores={ui_i_recipe=1..}] ui_i_conitem2 1
        scoreboard players set @s[scores={ui_i_recipe=11..}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=21}] ui_i_conitem 40
        scoreboard players set @s[scores={ui_i_recipe=21}] ui_i_conitem2 16
        scoreboard players set @s[scores={ui_i_recipe=22}] ui_i_conitem2 1
    #レシピ情報をもとに生成数を設定
        scoreboard players set @s[scores={ui_i_recipe=1..}] ui_i_resitem 1
