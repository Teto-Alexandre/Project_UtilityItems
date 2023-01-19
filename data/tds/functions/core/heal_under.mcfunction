# ダメージを与える

# 引数データをコピー
    execute store result score $Amount tds_dmg run data get storage tds: temp.Amount 100
    execute store result score $DisableParticle tds_dmg run data get storage tds: temp.DisableParticle
    scoreboard players operation $Amount tds_dmg > $0 tds_dmg

# =

# Health加算
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
    execute if score $DisableParticle tds_dmg matches 0 run function tds:core/heal_indicator

# リセット
    scoreboard players reset $Amount tds_dmg
    scoreboard players reset $Health tds_dmg
    scoreboard players reset $DisableParticle tds_dmg