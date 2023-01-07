#各パーティクルに個別実行

# 時間経過
    scoreboard players add @s ui_is 1

# 情報共有
    scoreboard players operation $type ui_temp = @s ui_gpc
    scoreboard players operation $is ui_temp = @s ui_is

# 個別
    # 長く残る爆発
    execute if score $type ui_temp matches 1 run function ui:common/particle/ss/1
    # 指向性のクリティカル表示
    execute if score $type ui_temp matches 2 run function ui:common/particle/ss/2
    # 指向性のマズルスモーク
    execute if score $type ui_temp matches 3 run function ui:common/particle/ss/3
    # 指向性のマズルスモーク小
    execute if score $type ui_temp matches 4 run function ui:common/particle/ss/4
    # 指向性拡散出力テスト用
    execute if score $type ui_temp matches 5 run function ui:common/particle/ss/5
    # 指向性拡散出力テスト用サンプル
    execute if score $type ui_temp matches 6 run function ui:common/particle/ss/6
    # 魔法陣
    execute if score $type ui_temp matches 7 run function ui:common/particle/ss/7
    # 収束 > 拡散（レーザーなし）
    execute if score $type ui_temp matches 8 run function ui:common/particle/ss/8
    # 魔法陣が出ない魔法弾
    execute if score $type ui_temp matches 9 run function ui:common/particle/ss/9
    # 火属性爆発
    execute if score $type ui_temp matches 10 run function ui:common/particle/ss/10
    # 火属性連続爆発
    execute if score $type ui_temp matches 11 run function ui:common/particle/ss/11
    # 雷撃
    execute if score $type ui_temp matches 12 run function ui:common/particle/ss/12
    # 大雷撃
    execute if score $type ui_temp matches 13 run function ui:common/particle/ss/13
    # 雷撃連続
    execute if score $type ui_temp matches 14 run function ui:common/particle/ss/14
    # 雷撃連続大
    execute if score $type ui_temp matches 15 run function ui:common/particle/ss/15
    # コンパス
    execute if score $type ui_temp matches 16 run function ui:common/particle/ss/16
    # 回復
    execute if score $type ui_temp matches 17 run function ui:common/particle/ss/17
    # 回復2
    execute if score $type ui_temp matches 18 run function ui:common/particle/ss/18