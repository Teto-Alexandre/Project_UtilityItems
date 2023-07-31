#
tag @s add tds_victim_temp

#
execute as @a if score @s ui_id = $Attacker tds_dmg run tag @s add tds_attacker_temp

# ダメージに倍率を乗せる
#scoreboard players operation $Damage tds_dmg *= @a[tag=tds_attacker_temp] norma_damage
#scoreboard players operation $Damage tds_dmg /= #1000 ui_num

#
#tellraw @a [{"text":"Factor: "},{"score":{"name": "$DamageFactor","objective": "tds_dmg"}},{"text":" Attacker: "},{"selector":"@a[tag=tds_attacker_temp]"},{"text":" Mult: "},{"score":{"name": "@a[tag=tds_attacker_temp,limit=1]","objective": "ui_stat_dmg_phys"}}]
execute if score $DamageFactor tds_dmg matches 0 run function tds:core/attacker/0.phys
execute if score $DamageFactor tds_dmg matches 1 run function tds:core/attacker/1.magi

#
tag @a[tag=tds_attacker_temp] remove tds_attacker_temp
tag @s remove tds_victim_temp