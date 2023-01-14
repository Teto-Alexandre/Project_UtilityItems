# ダメージを与える

# 計算に必要な値を取得
    #function tds:core/get_status
    execute unless score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run data get entity @s Health 100
    execute if score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run scoreboard players get @s tds_hps
    execute store result score $HealthMax tds_dmg run attribute @s generic.max_health get 100

# 回復が必要なら次を実行
    execute if score $Health tds_dmg < $HealthMax tds_dmg run function tds:core/heal_under