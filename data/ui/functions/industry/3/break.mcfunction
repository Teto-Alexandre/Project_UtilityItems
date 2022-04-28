#土台壊されたら破壊
    particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130003,display:{Name:'{"text":"簡易蓄電機","italic":false,"color":"dark_green"}',Lore:['[{"text":"隣接4ブロックから給電する","color":"gray","italic":false}]','[{"text":"給電速度：10SU/t","color":"gray","italic":false}]','[{"text":"送電速度：40SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：10000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_3"]}}}}
    kill @s