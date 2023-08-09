#> ui:common/motion/
#
# チェストに干渉するコモン
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#   Motion: Vec3:double
#       データ内のモーションと同じ記法
#
# set - モーションを上書きする
# knockback - 対象を入力方向に [Mult * KBRes] m/tick の速度で吹っ飛ばす
#
# @public

# スコア化
    #execute store result score $slot1 ui_temp run data get storage ui:common input.Slot1

# データコピー
    #data modify storage ui:common temp set from block ~ ~ ~ Items

    ##data merge storage ui:common {input:{Mode:"set",Motion:[0.0d,1.0d,0.0d]}}
    ##data merge storage ui:common {input:{Mode:"knockback",Mult:1}}

# 分岐
    execute if data storage ui:common input{Mode:"set"} if entity @s[type=player] run function ui:common/motion/set_pl/main
    execute if data storage ui:common input{Mode:"set"} if entity @s[type=!player] run function ui:common/motion/set_ent/main
    execute if data storage ui:common input{Mode:"knockback"} if entity @s[type=player,gamemode=!spectator] run function ui:common/motion/knockback_pl/main
    execute if data storage ui:common input{Mode:"knockback"} if entity @s[type=!player] run function ui:common/motion/knockback_ent/main
    
    # 入力方向のノックバックを算出して加算モード
    #execute if data storage ui:common input{Mode:"kb"} if entity @s[type=player] run function ui:common/motion/set_pl/main

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp