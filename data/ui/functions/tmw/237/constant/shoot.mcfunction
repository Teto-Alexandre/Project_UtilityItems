# 射撃形態になる

# エフェクトクリア
    effect clear @s speed
    effect clear @s[nbt={ActiveEffects:[{Id:8b,Amplifier:3b}]}] jump_boost
    effect clear @s[nbt={ActiveEffects:[{Id:8b,Amplifier:8b}]}] jump_boost
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:7b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:3b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:0b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:-1b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:-5b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:-9b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25b,Amplifier:-128b,Duration:15}]}] levitation
    execute if block ~ ~-0.3 ~ slime_block run effect give @s jump_boost 1 8 true
    effect clear @s invisibility
    effect clear @s regeneration
    scoreboard players set @s ui_st2 0
    scoreboard players set @s[tag=ui_temp_move] ui_gct 19
    scoreboard players set @s[scores={ui_st=1..,ui_gct=0..18}] ui_gct 19

# チームカラーに合わせた防具を装備
    execute if score $color ui_temp matches 1 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] armor.feet with leather_boots{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,4],Slot:"head"}]}
    execute if score $color ui_temp matches 1 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] armor.legs with leather_leggings{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,3],Slot:"head"}]}
    execute if score $color ui_temp matches 1 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] armor.chest with leather_chestplate{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,2],Slot:"head"}]}
    execute if score $color ui_temp matches 1 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] armor.head with leather_helmet{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,1],Slot:"head"}]}
    execute if score $color ui_temp matches 2 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] armor.feet with leather_boots{display:{color:16752832},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,4],Slot:"head"}]}
    execute if score $color ui_temp matches 2 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] armor.legs with leather_leggings{display:{color:16752832},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,3],Slot:"head"}]}
    execute if score $color ui_temp matches 2 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] armor.chest with leather_chestplate{display:{color:16752832},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,2],Slot:"head"}]}
    execute if score $color ui_temp matches 2 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] armor.head with leather_helmet{display:{color:16752832},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,1],Slot:"head"}]}

# チームカラーに合わせたチームにぶち込み
    execute if score $color ui_temp matches 1 run team join abyss @s
    execute if score $color ui_temp matches 2 run team join chaos @s

# ストレージのモデルデータを読み込み
    execute store result storage ui:gun temp.value int 1 run scoreboard players get $model ui_temp
    item modify entity @s weapon.mainhand ui:gun/value/model
