# 必要データ収集
    # UUID 収集
    data modify storage ui:gun temp2.UUID set from entity @s UUID
    #
    execute unless score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.ShotCT
    execute if score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.BurstCT
    execute if entity @s[nbt={OnGround:1b}] store result score $spread ui_temp run data get storage ui:gun temp2.Spread
    execute if entity @s[nbt={OnGround:0b}] store result score $spread ui_temp run data get storage ui:gun temp2.AirSpread
    execute store result score $multishot ui_temp run data get storage ui:gun temp2.MultiShot
    #
    data modify storage ui:gun temp3 set from entity @s SelectedItem.tag.tmw.bullets[0]
    execute store result score $mass ui_temp run data get storage ui:gun temp3.Mass
    execute store result score $power ui_temp run data get storage ui:gun temp3.Power
    scoreboard players set $speed.add ui_temp 0
    execute store result score $air_res ui_temp run data get storage ui:gun temp3.AirRes 100
    execute store result score $gravity ui_temp run data get storage ui:gun temp3.Gravity
    execute store result score $damage_type ui_temp run data get storage ui:gun temp3.DamageType
    execute store result score $particle.fly ui_temp run data get storage ui:gun temp3.FlyParticle
    execute store result score $particle.end ui_temp run data get storage ui:gun temp3.EndParticle

# 計算
    scoreboard players operation $speed ui_temp = $power ui_temp
    scoreboard players operation $speed ui_temp /= $mass ui_temp
    scoreboard players operation $speed.plus ui_temp = $speed ui_temp
    scoreboard players operation $speed.plus ui_temp /= #5 ui_num

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

# クールタイム解除時刻.mod
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

#
    data remove storage ui:gun temp3

# 書き込み開始
    data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw.bullets
    execute store result score $count ui_temp run data get storage ui:temp temp[0].Count
    scoreboard players remove $count ui_temp 1
    execute if score $count ui_temp matches ..0 run data remove storage ui:temp temp[0]
    execute if score $count ui_temp matches 1.. store result storage ui:temp temp[0].Count int 1 run scoreboard players get $count ui_temp

# 書き込み終了
    item modify entity @s weapon.mainhand ui:gun/value/bullets

# 弾切れチェック
    execute store result score $check ui_temp run data get storage ui:temp temp
    execute if score $check ui_temp matches ..0 run scoreboard players set $hand ui_temp 0
    execute if score $check ui_temp matches ..0 run scoreboard players set $item ui_temp 0
    execute if score $check ui_temp matches ..0 run function ui:tmw/255/player/switch/replace

# データクリア
    data remove storage ui:temp temp

# 変更した
    scoreboard players set $changed ui_temp 1