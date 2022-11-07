# 移動形態（壁上り形態ver）になる

# チャージキープ
    execute if score $ishold ui_temp matches 2.. run function ui:tmw/237/constant/charge_cancel

# 特殊効果
    effect clear @s slowness
    effect clear @s levitation
    effect give @s speed 1 25 true
    effect give @s[x_rotation=-90..-40] levitation 1 7 true
    effect give @s[x_rotation=-39..-11] levitation 1 3 true
    effect give @s[x_rotation=-10..10] levitation 1 255 true
    effect give @s[x_rotation=11..39] levitation 1 251 true
    effect give @s[x_rotation=40..90] levitation 1 247 true
    effect give @s invisibility 1 0 true
    execute as @e[nbt={HurtTime:0s}] if score @s ui_st2 matches 20.. run effect give @s regeneration 3 3 true
    scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

# 横方向加速
    #execute rotated ~ 0 positioned ^ ^ ^-0.35 run summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    #schedule function ui:misc/kill_slime 1t append

# チームカラーに合わせた防具を削除
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.head with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.chest with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.legs with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.feet with air

# ストレージにモデルデータを隔離
    execute store result score $model ui_temp run data get entity @s SelectedItem.tag.CustomModelData
    item modify entity @s weapon.mainhand ui:gun/value/model_air

# エフェクト
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~1.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~1.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~1.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 4 run particle block lime_concrete ~ ~1.2 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $world ui_tc matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move