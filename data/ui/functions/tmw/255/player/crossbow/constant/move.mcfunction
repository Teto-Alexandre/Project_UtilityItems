# 移動形態になる

# チャージキープ
    execute if score $ishold ui_temp matches 2.. run function ui:tmw/255/player/crossbow/constant/charge_cancel

# 特殊効果
    effect clear @s slowness
    effect give @s speed 1 25 true
    effect give @s jump_boost 1 3 true
    effect give @s invisibility 1 0 true
    execute as @e[nbt={HurtTime:0s}] if score @s ui_st2 matches 20.. run effect give @s regeneration 3 3 true
    scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

# チームカラーに合わせた防具を削除
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.head with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.chest with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.legs with air
    item replace entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] armor.feet with air

# ストレージにモデルデータを隔離
    execute store result score $model ui_temp run data get entity @s SelectedItem.tag.CustomModelData
    item modify entity @s weapon.mainhand ui:gun/value/model_air

# エフェクト
    scoreboard players operation $temp ui_temp = @s ui_move_s
    scoreboard players operation $temp ui_temp += @s ui_move_d
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 2 run particle block pink_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 4 run particle block lime_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 normal
    execute if score $world ui_tc matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# 素早く坂を上る挙動
    execute as @s if score $fall ui_temp matches 0 rotated ~ 0 unless block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.5 #ui:nocol unless block ^ ^ ^0.5 #ui:nocol if block ^ ^1 ^0.5 #ui:nocol if block ^0.4 ^1 ^0.5 #ui:nocol if block ^-0.4 ^1 ^0.5 #ui:nocol if block ^ ^1 ^0.9 #ui:nocol unless block ^ ^ ^0.5 #minecraft:slabs unless block ^ ^ ^0.5 #ui:nocol run teleport @s ^ ^1 ^0.4

# 移動形態になるとダブルジャンプが復活
    tag @s[tag=tmw_255_jumped] remove tmw_255_jumped

# タグを返す
    tag @s add ui_temp_move