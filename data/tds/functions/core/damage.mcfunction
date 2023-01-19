# 見かけのダメージを与える

# ノックバックを消して Hit
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-0-1 "NoKB_temp" 1 add
    execute at @s run summon minecraft:snowball ~ ~-0.31 ~ {Tags:["tds_temp_uuid"],Motion:[0.0,10.0,0.0],Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003}},Owner:[I;0,0,0,0]}
    tag @s add tds_NoKB_temp

# UUID が設定されてるならオーナーに書き込む
    execute if score $UUID tds_dmg matches 0 run data remove entity @e[tag=tds_temp_uuid,limit=1] Owner
    execute if score $UUID tds_dmg matches 1 run data modify entity @e[tag=tds_temp_uuid,limit=1] Owner set from storage tds: temp.Owner
    tag @e[tag=tds_temp_uuid] remove tds_temp_uuid