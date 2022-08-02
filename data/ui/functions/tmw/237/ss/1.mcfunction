# 軌道変更要素の有無を調べる
    #リフレクター他
    scoreboard players reset $sub102 ui_temp
    execute if entity @e[tag=ui_c_ref] run scoreboard players set $sub102 ui_temp 1
    #アクセラレーター
    scoreboard players reset $sub112 ui_temp
    execute if entity @e[tag=ui_c_acc] run scoreboard players set $sub112 ui_temp 1

# 弾丸
    execute as @e[tag=tmw_237] at @s run function ui:tmw/237/projectile/tick

# SSロジック維持
    execute if entity @e[tag=tmw_237] run schedule function ui:tmw/237/ss/1 1t append