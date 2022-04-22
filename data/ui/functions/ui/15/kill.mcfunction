#
    particle block ice ~ ~0.5 ~ 1 0.5 1 0 10 force
    playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
    data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_boat"}}] {Item:{id:"minecraft:stray_spawn_egg",tag:{tmw:{egg:15},CustomModelData:132002,display:{Name:'{"text":"氷結のボート","color":"light_purple","italic":false}',Lore:['[{"text":" 周囲の水を凍らせて高速移動","color":"gray","italic":false}]','[{"text":" 氷はボートが離れると元に戻る","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_15"]}}}}
    kill @e[tag=ui_15_2,sort=nearest,limit=1]