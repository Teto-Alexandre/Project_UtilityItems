#レシピを参照して必要素材と完成品をロード

    # アイテム検知でレシピ情報
        scoreboard players set @s ui_i_recipe 0
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 1
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"エーテリウムシューター"}}}},{Slot:11b,id:"minecraft:iron_block"}]} run scoreboard players set @s ui_i_recipe 2
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"エーテリウムシューター"}}}},{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 3
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"エーテリウムシューター"}}}},{Slot:11b,tag:{tmw:{id:1004}}}]} run scoreboard players set @s ui_i_recipe 4
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:glass"}]} run scoreboard players set @s ui_i_recipe 11
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:gold_block"},{Slot:11b,id:"minecraft:ender_pearl"}]} run scoreboard players set @s ui_i_recipe 21
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:hopper"},{Slot:11b,tag:{tmw:{id:1007}}}]} run scoreboard players set @s ui_i_recipe 31
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:220,type:1}}},{Slot:11b,tag:{tmw:{id:1011}}}]} run scoreboard players set @s ui_i_recipe 32
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:220,type:2}}},{Slot:11b,id:"minecraft:ender_pearl"}]} run scoreboard players set @s ui_i_recipe 33
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:218,type:3}}},{Slot:11b,tag:{tmw:{id:1008}}}]} run scoreboard players set @s ui_i_recipe 34
        
        # 8-16軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:stone"},{Slot:11b,id:"minecraft:lever"}]} run scoreboard players set @s ui_i_recipe 101
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:lever"}]} run scoreboard players set @s ui_i_recipe 102
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1008}}},{Slot:11b,id:"minecraft:lever"}]} run scoreboard players set @s ui_i_recipe 103
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1008}}},{Slot:11b,id:"minecraft:repeater"}]} run scoreboard players set @s ui_i_recipe 104
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:nether_brick"},{Slot:11b,id:"minecraft:repeater"}]} run scoreboard players set @s ui_i_recipe 105
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:netherite_scrap"},{Slot:11b,id:"minecraft:comparator"}]} run scoreboard players set @s ui_i_recipe 106
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:netherite_ingot"},{Slot:11b,id:"minecraft:comparator"}]} run scoreboard players set @s ui_i_recipe 107
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1008}}},{Slot:11b,tag:{tmw:{id:1013}}}]} run scoreboard players set @s ui_i_recipe 151
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1007}}},{Slot:11b,tag:{tmw:{id:1013}}}]} run scoreboard players set @s ui_i_recipe 152
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:piston"},{Slot:11b,id:"minecraft:green_dye"}]} run scoreboard players set @s ui_i_recipe 153
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1014}}},{Slot:11b,id:"minecraft:iron_nugget"}]} run scoreboard players set @s ui_i_recipe 154
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1008}}},{Slot:11b,id:"minecraft:leather"}]} run scoreboard players set @s ui_i_recipe 155
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:emerald"},{Slot:11b,tag:{tmw:{id:1013}}}]} run scoreboard players set @s ui_i_recipe 156
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1006}}},{Slot:11b,id:"minecraft:ender_pearl"}]} run scoreboard players set @s ui_i_recipe 157
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:blue_ice"},{Slot:11b,tag:{tmw:{id:1003}}}]} run scoreboard players set @s ui_i_recipe 158
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1012}}},{Slot:11b,id:"minecraft:rotten_flesh"}]} run scoreboard players set @s ui_i_recipe 159
        
        # 1-8軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-2P-R"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 201
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-5P"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 202
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-5P"}}}},{Slot:11b,tag:{tmw:{id:1007}}}]} run scoreboard players set @s ui_i_recipe 203
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-6AR"}}}},{Slot:11b,tag:{tmw:{id:1007}}}]} run scoreboard players set @s ui_i_recipe 204
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-6AR"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 205
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-6AR"}}}},{Slot:11b,id:"minecraft:netherite_scrap"}]} run scoreboard players set @s ui_i_recipe 206
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-11AR-E"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 207
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-7SG"}}}},{Slot:11b,tag:{tmw:{id:1007}}}]} run scoreboard players set @s ui_i_recipe 208
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-7SG"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 209
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-7SG"}}}},{Slot:11b,id:"minecraft:netherite_scrap"}]} run scoreboard players set @s ui_i_recipe 210
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-7SG"}}}},{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 211
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-4RF"}}}},{Slot:11b,tag:{tmw:{id:1006}}}]} run scoreboard players set @s ui_i_recipe 212
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-4RF"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 213
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-22SR"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 214
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-22SR"}}}},{Slot:11b,tag:{tmw:{id:1007}}}]} run scoreboard players set @s ui_i_recipe 215
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{gun:{name:"IH-22SR"}}}},{Slot:11b,tag:{tmw:{id:1006}}}]} run scoreboard players set @s ui_i_recipe 216
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:226,type:1}}},{Slot:11b,tag:{tmw:{id:1014}}}]} run scoreboard players set @s ui_i_recipe 217
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:226,type:2}}},{Slot:11b,tag:{tmw:{id:1015}}}]} run scoreboard players set @s ui_i_recipe 218
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:226,type:3}}},{Slot:11b,tag:{tmw:{id:1004}}}]} run scoreboard players set @s ui_i_recipe 219
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:227,type:1}}},{Slot:11b,id:"minecraft:emerald"}]} run scoreboard players set @s ui_i_recipe 220
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:227,type:2}}},{Slot:11b,tag:{tmw:{id:1015}}}]} run scoreboard players set @s ui_i_recipe 221
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:227,type:3}}},{Slot:11b,tag:{tmw:{id:1012}}}]} run scoreboard players set @s ui_i_recipe 222
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:ender_eye"},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 223
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:nether_star"},{Slot:11b,tag:{tmw:{id:1018}}}]} run scoreboard players set @s ui_i_recipe 224
        
        # 1-4軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:stone"},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 301
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:brick"},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 302
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 303
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1007}}},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 304
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:gold_ingot"},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 305
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:netherite_scrap"},{Slot:11b,id:"minecraft:gunpowder"}]} run scoreboard players set @s ui_i_recipe 306
        
        # 1-1軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-HG-Magazine"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 401
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-AR-Magazine"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 402
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-SG-Shell"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 403
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-RF-Bullet"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 404
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-SR-Bullet"}}}},{Slot:11b,tag:{tmw:{id:1009}}}]} run scoreboard players set @s ui_i_recipe 405
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{ammo:{name:"IH-SR-Bullet"}}}},{Slot:11b,id:"minecraft:nether_star"}]} run scoreboard players set @s ui_i_recipe 406
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:1}}},{Slot:11b,id:"minecraft:iron_block"}]} run scoreboard players set @s ui_i_recipe 407
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:2}}},{Slot:11b,id:"minecraft:iron_block"}]} run scoreboard players set @s ui_i_recipe 407
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:11}}},{Slot:11b,id:"minecraft:diamond_block"}]} run scoreboard players set @s ui_i_recipe 408
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:12}}},{Slot:11b,id:"minecraft:diamond_block"}]} run scoreboard players set @s ui_i_recipe 408
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:21}}},{Slot:11b,id:"minecraft:netherite_block"}]} run scoreboard players set @s ui_i_recipe 409
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:8,type:22}}},{Slot:11b,id:"minecraft:netherite_block"}]} run scoreboard players set @s ui_i_recipe 409
        
        # 64-1軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:1011}}},{Slot:11b,id:"minecraft:nether_star"}]} run scoreboard players set @s ui_i_recipe 501
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,id:"minecraft:blue_ice"},{Slot:11b,id:"minecraft:nether_star"}]} run scoreboard players set @s ui_i_recipe 502
        
        # 1-3軽量化用定型レシピ
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:201}}},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 601
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:202}}},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 602
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:203}}},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 603
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:206}}},{Slot:11b,id:"minecraft:diamond"}]} run scoreboard players set @s ui_i_recipe 604
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:201}}},{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 605
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:202}}},{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 606
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:203}}},{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 607
        execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{tmw:{id:206}}},{Slot:11b,id:"minecraft:netherite_ingot"}]} run scoreboard players set @s ui_i_recipe 608

    # レシピ情報をもとに作業時間を設定
        scoreboard players set @s[scores={ui_i_recipe=1..300}] ui_i_ctt 2000
        scoreboard players set @s[scores={ui_i_recipe=301..500}] ui_i_ctt 200
        scoreboard players set @s[scores={ui_i_recipe=501..}] ui_i_ctt 6000

    # レシピ情報をもとに必要数を設定
        scoreboard players set @s[scores={ui_i_recipe=1}] ui_i_conitem 16
        scoreboard players set @s[scores={ui_i_recipe=1}] ui_i_conitem2 16
        scoreboard players set @s[scores={ui_i_recipe=2}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=2}] ui_i_conitem2 4
        scoreboard players set @s[scores={ui_i_recipe=3}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=3}] ui_i_conitem2 24
        scoreboard players set @s[scores={ui_i_recipe=4}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=4}] ui_i_conitem2 4
        scoreboard players set @s[scores={ui_i_recipe=11}] ui_i_conitem 8
        scoreboard players set @s[scores={ui_i_recipe=11}] ui_i_conitem2 16
        scoreboard players set @s[scores={ui_i_recipe=21}] ui_i_conitem 2
        scoreboard players set @s[scores={ui_i_recipe=21}] ui_i_conitem2 2
        scoreboard players set @s[scores={ui_i_recipe=31..40}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=31}] ui_i_conitem2 8
        scoreboard players set @s[scores={ui_i_recipe=32..40}] ui_i_conitem2 4
        scoreboard players set @s[scores={ui_i_recipe=101..200}] ui_i_conitem 8
        scoreboard players set @s[scores={ui_i_recipe=101..200}] ui_i_conitem2 16
        scoreboard players set @s[scores={ui_i_recipe=201..300}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=201..300}] ui_i_conitem2 8
        scoreboard players set @s[scores={ui_i_recipe=301..400}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=301..400}] ui_i_conitem2 4
        scoreboard players set @s[scores={ui_i_recipe=401..500}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=401..500}] ui_i_conitem2 1
        scoreboard players set @s[scores={ui_i_recipe=501..600}] ui_i_conitem 64
        scoreboard players set @s[scores={ui_i_recipe=501..600}] ui_i_conitem2 1
        scoreboard players set @s[scores={ui_i_recipe=601..700}] ui_i_conitem 1
        scoreboard players set @s[scores={ui_i_recipe=601..700}] ui_i_conitem2 3

    # レシピ情報をもとに生成数を設定
        scoreboard players set @s[scores={ui_i_recipe=1..}] ui_i_resitem 1
