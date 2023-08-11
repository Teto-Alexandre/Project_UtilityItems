# 軌道変更要素の有無を調べる
    #リフレクター他
    scoreboard players reset $sub102 ui_temp
    execute if entity @e[tag=ui_c_ref] run scoreboard players set $sub102 ui_temp 1
    #アクセラレーター
    scoreboard players reset $sub112 ui_temp
    execute if entity @e[tag=ui_c_acc] run scoreboard players set $sub112 ui_temp 1

# 弾丸
    #execute as @e[tag=tmw_255] at @s unless score $bullettime ui_world matches 1.. run function ui:tmw/255/projectile/tick
    #execute at @e[tag=tmw_255] if score $bullettime ui_world matches 1.. run particle dust 0 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force

    execute unless score $bullettime ui_world matches 1.. as @e[tag=tmw_255,limit=1] run function ui:tmw/255/player/crossbow/ss/eo/s_team_id
    execute if score $bullettime ui_world matches 1.. at @e[tag=tmw_255] run particle dust 0 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force

# SSロジック維持
    execute if entity @e[tag=tmw_255] run schedule function ui:tmw/255/player/crossbow/ss/1 1t append