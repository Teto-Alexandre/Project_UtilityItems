#> ui:misc/dhp
#
# 魔導障壁を持っているなら実行
#
# 耐性エフェクトとパーティクルを付与する
#
# @public

# 障壁アリなら耐性を付ける
    effect give @s minecraft:resistance 1 4 true

# パーティクル
    execute at @s run particle minecraft:dust 1 1 0.5 0.8 ~ ~1 ~ 0.5 0.5 0.5 0 1 force