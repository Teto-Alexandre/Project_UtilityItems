##> tds:core/heal_indicator
#
# 二分探索でparticleを表示する
#
# @within function tds:core/health_subtract

# 値は100倍されたものでハート単位なのでDamage /= 200する
    scoreboard players operation $Amount tds_dmg /= $200 tds_dmg
# Damage << 13   有効範囲に合わせるため13ビット左へシフト
    scoreboard players operation $Amount tds_dmg *= $2^13 tds_dmg
# オーバーフローしてたらParticle表示
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 2048
# 0になるまでやる
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 1024
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 512
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 256
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 128
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 64
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 32
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 16
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 8
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 4
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 2
    scoreboard players operation $Amount tds_dmg *= $2 tds_dmg
    execute if score $Amount tds_dmg matches ..-1 run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 1