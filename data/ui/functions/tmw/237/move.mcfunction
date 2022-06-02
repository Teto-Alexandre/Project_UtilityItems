# 自分の色の羊毛を踏んだ時

# 特殊効果
    effect clear @s slowness
    effect clear @s[nbt={ActiveEffects:[{Id:8b,Amplifier:-127b}]}] jump_boost
    effect give @s speed 1 25 true
    effect give @s jump_boost 1 3 true
    effect give @s invisibility 1 0 true
    execute if score @s ui_st2 matches 20.. run effect give @s regeneration 3 3 true
    scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

# チームカラーに合わせた防具を削除
    item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] armor.head with air

# ストレージにモデルデータを隔離
    execute store result score $model ui_temp run data get entity @s SelectedItem.tag.CustomModelData
    item modify entity @s weapon.mainhand ui:gun/value/model_air

# ブロックをぶっ飛ばして登る
    #execute if score $color ui_temp matches 1 at @s rotated ~ 0 if block ^ ^ ^0.5 light_blue_wool run teleport @s ^ ^1 ^0.2 ~ ~
    #execute if score $color ui_temp matches 2 at @s rotated ~ 0 if block ^ ^ ^0.5 pink_wool run teleport @s ^ ^1 ^0.2 ~ ~

# エフェクト
    execute if score @s ui_move_s matches 1.. if score $color ui_temp matches 1 run particle block light_blue_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score @s ui_move_s matches 1.. if score $color ui_temp matches 2 run particle block pink_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score $world ui_tc matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move