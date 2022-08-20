# 射撃形態になる

# タグチェック
    execute if entity @s[tag=tmw_237_king] run function ui:tmw/237/amp/king

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
    execute if score $team ui_temp matches 1 if entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:8247039}}}]}] run function ui:tmw/237/constant/armor/eq1
    execute if score $team ui_temp matches 2 if entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16752832}}}]}] run function ui:tmw/237/constant/armor/eq2
    execute if score $team ui_temp matches 3 if entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:16646013}}}]}] run function ui:tmw/237/constant/armor/eq3
    execute if score $team ui_temp matches 4 if entity @s[nbt=!{Inventory:[{Slot:103b,tag:{display:{color:10551208}}}]}] run function ui:tmw/237/constant/armor/eq4

# チームカラーに合わせたチームにぶち込み
    execute if score $team ui_temp matches 1 run team join blue @s
    execute if score $team ui_temp matches 2 run team join red @s
    execute if score $team ui_temp matches 3 run team join yellow @s
    execute if score $team ui_temp matches 4 run team join green @s

# ストレージのモデルデータを読み込み
    execute store result storage ui:gun temp.value int 1 run scoreboard players get $model ui_temp
    item modify entity @s weapon.mainhand ui:gun/value/model
