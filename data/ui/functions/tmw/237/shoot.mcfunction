# 射撃体勢に入ったとき

# エフェクトクリア
    effect clear @s speed
    effect clear @s[nbt={ActiveEffects:[{Id:8b,Amplifier:4b}]}] jump_boost
    effect clear @s[nbt={ActiveEffects:[{Id:8b,Amplifier:-127b,Duration:10}]}] jump_boost
    effect clear @s invisibility
    effect clear @s regeneration
    scoreboard players set @s ui_st2 0
    scoreboard players set @s[tag=ui_temp_move] ui_gct 20

# チームカラーに合わせた防具を装備
    execute if score $color ui_temp matches 1 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] armor.head with leather_helmet{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,1],Slot:"head"}]}
    execute if score $color ui_temp matches 2 run item replace entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] armor.head with leather_helmet{display:{color:16752832},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,1],Slot:"head"}]}

# チームカラーに合わせたチームにぶち込み
    execute if score $color ui_temp matches 1 run team join abyss @s
    execute if score $color ui_temp matches 2 run team join chaos @s

# ストレージのモデルデータを読み込み
    execute store result storage ui:gun temp.value int 1 run scoreboard players get $model ui_temp
    item modify entity @s weapon.mainhand ui:gun/value/model