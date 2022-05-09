# 弾を全部撃ってリロードするとこ
    #execute store result score $ammo.max ui_temp run data get storage ui:gun temp.ammo
    execute store result score $ammo ui_temp run data get storage ui:gun temp.now.ammo

# リロード終了時刻.mod
    execute store result score $temp ui_temp run data get storage ui:gun temp.rt
    execute store result score $ct.temp ui_temp run time query gametime
    scoreboard players operation $ct.temp ui_temp += $temp ui_temp
    execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ct.temp ui_temp
    item modify entity @s weapon.mainhand ui:gun/value/now.ct
    
# 装填表示で召喚
    data modify storage ui:beacongametemp value set value 1
    item modify entity @s weapon.mainhand ui:gun/value/now.reload

# $ammo = $ammo.max になるまで.lp
    execute if score $ammo ui_temp < $ammo.max ui_temp run function ui:tmw/235/reload.lp

# アイテム転置
    data modify storage ui:gun name set from storage ui:gun temp.name
    item modify entity @s weapon.mainhand ui:gun/name_ammo_r
    execute store result storage ui:beacongametemp value int 1 run scoreboard players get $ammo ui_temp
    scoreboard players operation $ammo ui_temp *= #100 ui_num
    scoreboard players operation $ammo ui_temp /= $ammo.max ui_temp
    scoreboard players operation $ammo ui_temp > #5 ui_num
    scoreboard players operation $ammo ui_temp < #95 ui_num
    #tellraw @a [{"score":{"name":"$ammo","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ammo.max","objective":"ui_temp"}}]
    item modify entity @s weapon.mainhand ui:gun/value/now.ammo

# エフェクト
    execute at @s run particle crit ~ ~1 ~ 0.2 0.2 0.2 0.5 10 normal
    execute at @s run playsound block.piston.contract player @a ~ ~ ~ 1 1.4 0