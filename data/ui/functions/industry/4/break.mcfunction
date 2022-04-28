#土台壊されたら破壊
    particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:furnace"}}]
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004,display:{Name:'{"text":"電気かまど","italic":false,"color":"dark_green"}',Lore:['[{"text":"電気を使って二倍速で精錬する","color":"gray","italic":false}]','[{"text":"消費電力：2SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：2000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_4"]}}}}
    kill @s