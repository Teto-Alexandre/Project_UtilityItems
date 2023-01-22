#初回

tellraw @a ["",{"text":"TDS","color":"white"},{"text":"> ","color":"green"},{"text":"データの読み込みが完了しました","color":"gray"}]
tellraw @a ["",{"text":"TDS","color":"white"},{"text":"> ","color":"green"},{"text":"現在のバージョンは","color":"gray"},{"text":" 6 ","color":"aqua"},{"text":"です","color":"gray"}]

# hpの桁数をint型で表現する
scoreboard objectives add tds_hpp dummy {"text":"TetoDamageSystem_HealthPointPlace","color":"gold","italic":true}

scoreboard objectives add tds_hps dummy {"text":"TetoDamageSystem_HealthPointSet","color":"gold","italic":true}
scoreboard objectives add tds_tick dummy {"text":"TetoDamageSystem_Tick","color":"gold","italic":true}

scoreboard objectives add tds_fire dummy {"text":"TetoDamageSystem_Fire","color":"gold","italic":true}
scoreboard objectives add tds_firer dummy {"text":"TetoDamageSystem_FireResist","color":"gold","italic":true}
scoreboard objectives add tds_cold dummy {"text":"TetoDamageSystem_Cold","color":"gold","italic":true}
scoreboard objectives add tds_coldr dummy {"text":"TetoDamageSystem_ColdResist","color":"gold","italic":true}
scoreboard objectives add tds_amethyst dummy {"text":"TetoDamageSystem_Amethyst","color":"gold","italic":true}
scoreboard objectives add tds_amethyst_t dummy {"text":"TetoDamageSystem_Amethyst_Time","color":"gold","italic":true}
scoreboard objectives add tds_acid dummy {"text":"TetoDamageSystem_Acid","color":"gold","italic":true}

scoreboard objectives add tds_totem dummy {"text":"TetoDamageSystem_Totem","color":"gold","italic":true}

scoreboard objectives add tds_damage_cooltime_amount dummy {"text":"TetoDamageSystem_Damage_Cooltime_Amount","color":"gold","italic":true}
scoreboard objectives add tds_damage_cooltime_time dummy {"text":"TetoDamageSystem_Damage_Cooltime_Time","color":"gold","italic":true}

scoreboard players set $0 tds_dmg 0
scoreboard players set $1 tds_dmg 1
scoreboard players set $2 tds_dmg 2
scoreboard players set $3 tds_dmg 3
scoreboard players set $4 tds_dmg 4
scoreboard players set $5 tds_dmg 5
scoreboard players set $6 tds_dmg 6
scoreboard players set $7 tds_dmg 7
scoreboard players set $8 tds_dmg 8
scoreboard players set $9 tds_dmg 9
scoreboard players set $10 tds_dmg 10
scoreboard players set $20 tds_dmg 20
scoreboard players set $25 tds_dmg 25
scoreboard players set $100 tds_dmg 100
scoreboard players set $1000 tds_dmg 1000
scoreboard players set $2000 tds_dmg 2000
scoreboard players set $2^13 tds_dmg 8192
scoreboard players set $10000 tds_dmg 10000
scoreboard players set $20000 tds_dmg 20000
scoreboard players set $2^19 tds_dmg 524288

# 可変設定項目
scoreboard players set $max tds_fire 200
scoreboard players set $max tds_cold 200
scoreboard players set $max tds_acid 200

#
scoreboard players set $version tds_dmg 6