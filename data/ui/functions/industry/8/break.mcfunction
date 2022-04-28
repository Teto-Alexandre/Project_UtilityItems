#土台壊されたら破壊
    particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008,display:{Name:'{"text":"注入機","italic":false,"color":"dark_green"}',Lore:['[{"text":"電気を使ってアイテムを注入する","color":"gray","italic":false}]','[{"text":"消費電力：4SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：2000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_8"]}}}}
    kill @s