# ダメージを与える

# 引数データをコピー
    execute store result score $Amount tds_dmg run data get storage tds: Amount 100
    execute unless data storage tds: DisableParticle run data modify storage tds: DisableParticle set value 0b

# 計算に必要な値を取得
    #function tds:core/get_status
    execute unless score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run data get entity @s Health 100
    execute if score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run scoreboard players get @s tds_hps
    execute store result score $HealthMax tds_dmg run attribute @s generic.max_health get 100
    scoreboard players operation $Amount tds_dmg > $0 tds_dmg

# =

# Health減算
    scoreboard players operation $Health tds_dmg += $Amount tds_dmg
# MobのHealthMaxより回復量が高い場合HealthMaxに設定
    scoreboard players operation $Amount tds_dmg < $HealthMax tds_dmg
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation @s tds_hps = $Health tds_dmg

    # Mob
        execute if entity @s[type=!player] if score $Health tds_dmg matches 1.. store result entity @s Health float 0.01 run scoreboard players get $Health tds_dmg

# 返り値をここで記録（ ♥3,6ダメージ → 600 ）
    scoreboard players operation $Return tds_dmg = $Amount tds_dmg

# ダメージを数値表示
    execute if score $damage_indicator ui_world matches 1 run function tds:core/heal_num_indicator

# 演出
    function tds:core/heal_indicator

# リセット
    scoreboard players reset $Amount tds_dmg
    scoreboard players reset $Health tds_dmg