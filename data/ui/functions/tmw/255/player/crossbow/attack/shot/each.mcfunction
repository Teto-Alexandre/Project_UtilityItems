# Multiごとに個別

#
    execute if score $hand ui_temp matches 0 run data modify storage ui:tmw temp.this set from entity @s SelectedItem
    execute if score $hand ui_temp matches 1 run data modify storage ui:tmw temp.this set from entity @s Inventory[{Slot:-106b}]
    data modify storage ui:gun temp3 set from storage ui:tmw temp.this.tag.tmw.bullets[0]
    execute store result score $mass ui_temp run data get storage ui:gun temp3.Mass
    execute store result score $power ui_temp run data get storage ui:gun temp3.Power
    scoreboard players set $speed.add ui_temp 0
    execute store result score $air_res ui_temp run data get storage ui:gun temp3.AirRes 100
    execute store result score $gravity ui_temp run data get storage ui:gun temp3.Gravity
    execute store result score $pack ui_temp run data get storage ui:gun temp3.Pack
    execute store result score $spread.min ui_temp run data get storage ui:gun temp3.Spread
    execute store result score $damage_type ui_temp run data get storage ui:gun temp3.DamageType
    execute store result score $particle.fly ui_temp run data get storage ui:gun temp3.FlyParticle
    execute store result score $particle.end ui_temp run data get storage ui:gun temp3.EndParticle

# 計算
    # 弾速 = 弾体質量 x 火力 [基準：ハンドガンで100ぐらいを想定]
    scoreboard players operation $speed ui_temp = $power ui_temp
    scoreboard players operation $speed ui_temp /= $mass ui_temp
    scoreboard players operation $speed ui_temp -= $barrel ui_temp
    scoreboard players operation $speed_over ui_temp = $speed ui_temp
    scoreboard players operation $speed ui_temp < #0 ui_num
    execute if score $speed_over ui_temp matches 1.. run scoreboard players operation $speed_over ui_temp /= #10 ui_num
    scoreboard players operation $speed ui_temp += $barrel ui_temp
    execute if score $speed_over ui_temp matches 1.. run scoreboard players operation $speed ui_temp += $speed_over ui_temp
    # 弾速振幅最大値 = 弾速 x 0.2 ( 弾速 = 本来の弾速 x 1 ~ 1.2 )
    scoreboard players operation $speed.plus ui_temp = $speed ui_temp
    scoreboard players operation $speed.plus ui_temp /= #5 ui_num
    # 反動 = 火力 x 弾体数 [基準：ハンドガンで100,ショットガンで300ぐらい]
    scoreboard players operation $recoil ui_temp = $power ui_temp
    scoreboard players operation $recoil ui_temp *= $pack ui_temp
    # 新散布係数 = 散布係数 + 反動
    scoreboard players operation $spread ui_temp += $recoil ui_temp
    scoreboard players operation $sneak_time ui_temp < #60 ui_num
    scoreboard players operation $sneak_time ui_temp *= #100 ui_num
    scoreboard players operation $spread ui_temp -= $sneak_time ui_temp
    scoreboard players operation $spread ui_temp /= #20 ui_num
    scoreboard players operation $spread ui_temp > $spread.min ui_temp

# チャージ補正
    execute if score $burst_alt.id ui_temp matches 1..100 run function ui:tmw/255/player/crossbow/attack/shot/burst4
    execute if score $burst_alt.id ui_temp matches 101..200 run function ui:tmw/255/player/crossbow/attack/shot/burst5
    execute if score $burst_alt.id ui_temp matches 201..300 run function ui:tmw/255/player/crossbow/attack/shot/burst8
    execute if score $burst_alt.id ui_temp matches 301..400 run function ui:tmw/255/player/crossbow/attack/shot/burst9

# タイプごとに拡散して発射
    #function ui:tmw/255/player/crossbow/attack/shot/loop
    execute anchored eyes run particle crit ^-0.25 ^-0.1 ^0.7 0 0 0 0.4 3
    execute anchored eyes positioned ^-0.25 ^-0.1 ^ run function ui:tmw/255/player/crossbow/attack/shot/spreadmanager/1

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp3.Sound
    #execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.6 0
    #execute if score $temp ui_temp matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.4 1.4 0
    #execute if score $temp ui_temp matches 3 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.6 1.2 0
    #execute if score $temp ui_temp matches 4 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.8 1.0 0
    #execute if score $temp ui_temp matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 2.0 0.9 0
    #execute if score $temp ui_temp matches 101 run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 1.6 0
    #execute if score $temp ui_temp matches 101 run effect give @s slowness 1 2 true
    #execute if score $temp ui_temp matches -1 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.8 0.8 0

#発射音
    # 連射系 - IRONGOLEM_HIT-1-2-0,SKELETON_HURT-1-2-0,ZOMBIE_WOOD-1-2-0
        execute if score $temp ui_temp matches -2 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -2 run playsound entity.skeleton.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -2 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
    # LMG - IRONGOLEM_HIT-1-2-0,SKELETON_HURT-1-2-0,ZOMBIE_WOOD-1-2-0,ITEM_BREAK-1-2-2,NOTE_SNARE_DRUM-1-0-2,BLAZE_HIT-1-2-0,DOOR_CLOSE-1-2-4
        execute if score $temp ui_temp matches -3 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -3 run playsound entity.skeleton.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -3 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -3 run playsound entity.item.break player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -3 run playsound block.note_block.snare player @a ~ ~ ~ 1 0.5 0
        execute if score $temp ui_temp matches -3 run playsound entity.blaze.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -3 run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0
    # PDW - SHOOT_ARROW-1-2-0,NOTE_SNARE_DRUM-1-0-2,SKELETON_HURT-1-2-0,ZOMBIE_WOOD-1-2-0
        execute if score $temp ui_temp matches -4 run playsound entity.arrow.shoot player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -4 run playsound block.note_block.snare player @a ~ ~ ~ 1 0.5 0
        execute if score $temp ui_temp matches -4 run playsound entity.skeleton.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -4 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
    # SG - WITHER_SHOOT-1-2-0,EXPLODE-1-2-0
        execute if score $temp ui_temp matches -5 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -5 run playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
    # HG - BLAZE_HIT-1-2-0,ZOMBIE_WOOD-1-2-0,DOOR_CLOSE-1-2-4
        execute if score $temp ui_temp matches -6 run playsound entity.blaze.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -6 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -6 run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0
    # SR - IRONGOLEM_HIT-1-2-0,SKELETON_HURT-1-2-0,ZOMBIE_WOOD-1-2-0,FIRE_IGNITE-1-1-4,DOOR_OPEN-1-2-6
        execute if score $temp ui_temp matches -7 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -7 run playsound entity.skeleton.hurt player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -7 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
        execute if score $temp ui_temp matches -7 run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
        execute if score $temp ui_temp matches -7 run playsound block.wooden_door.open player @a ~ ~ ~ 1 2 0

    #HG
        execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.8 0
        execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1 0
        execute if score $temp ui_temp matches 1 run playsound entity.blaze.hurt player @a ~ ~ ~ 2 2 0
        execute if score $temp ui_temp matches 6 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1.4 0
        execute if score $temp ui_temp matches 6 run playsound block.chain.break player @a ~ ~ ~ 1.5 2 0
    #Bullet
        execute if score $temp ui_temp matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6 0
        execute if score $temp ui_temp matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.8 0
        execute if score $temp ui_temp matches 2 run playsound entity.blaze.hurt player @a ~ ~ ~ 2 1.5 0
    #AR
        execute if score $temp ui_temp matches 3 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1 0
        execute if score $temp ui_temp matches 3 run playsound entity.blaze.hurt player @a ~ ~ ~ 1 2 0
    #SG
        execute if score $temp ui_temp matches 4 run playsound entity.generic.explode player @a ~ ~ ~ 3 2 0
        execute if score $temp ui_temp matches 4 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 4 1.2 0
        execute if score $temp ui_temp matches 4 run playsound item.shield.break player @a ~ ~ ~ 2 1.8 0
        execute if score $temp ui_temp matches 4 run playsound entity.blaze.hurt player @a ~ ~ ~ 3 1.2 0
    #SR
        execute if score $temp ui_temp matches 5 run playsound entity.generic.explode player @a ~ ~ ~ 4 2 0
        execute if score $temp ui_temp matches 5 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 5 1.5 0
        execute if score $temp ui_temp matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.5 0
        execute if score $temp ui_temp matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6 0
        execute if score $temp ui_temp matches 5 run playsound item.shield.break player @a ~ ~ ~ 2 1.5 0
        execute if score $temp ui_temp matches 5 run playsound entity.blaze.hurt player @a ~ ~ ~ 3 0.7 0

#
    data remove storage ui:gun temp3

# 書き込み開始
    data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw.bullets
    execute store result score $count ui_temp run data get storage ui:temp temp[0].Count
    scoreboard players remove $count ui_temp 1
    execute if score $count ui_temp matches ..0 run data remove storage ui:temp temp[0]
    execute if score $count ui_temp matches 1.. store result storage ui:temp temp[0].Count int 1 run scoreboard players get $count ui_temp

# 書き込み終了
    execute if score $hand ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/bullets
    execute if score $hand ui_temp matches 1 run item modify entity @s weapon.offhand ui:gun/value/bullets

# 弾切れチェック
    execute store result score $check ui_temp run data get storage ui:temp temp
    execute if score $check ui_temp matches ..0 run scoreboard players set $item ui_temp 0
    execute if score $check ui_temp matches ..0 run function ui:tmw/255/player/switch/replace

# データクリア
    data remove storage ui:temp temp

# リピート
    scoreboard players remove $multishot ui_temp 1
    execute if score $check ui_temp matches 1.. if score $multishot ui_temp matches 1.. run function ui:tmw/255/player/crossbow/attack/shot/each