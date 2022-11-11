#各パーティクルに個別実行

# 時間経過
    scoreboard players add @s ui_is 1

# 情報共有
    scoreboard players operation $type ui_temp = @s ui_gpc
    scoreboard players operation $is ui_temp = @s ui_is

# 個別
    # 長く残る爆発
    execute if score $type ui_temp matches 1 run function ui:common/particle/ss/1
    # 指向性のフラッシュ
    execute if score $type ui_temp matches 2 run function ui:common/particle/ss/2