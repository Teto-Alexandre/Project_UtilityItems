# 長押し中きらきらを周囲に出す
# 1秒溜めてから離すと貫通力の高い雷パーティクル弾を発射
particle electric_spark ~ ~1 ~ 0.6 0.6 0.6 0 2
playsound entity.evoker.cast_spell player @a ~ ~ ~ 0.5 1.8 0
execute at @s[scores={ui_use2=40}] run particle dust 1 1 0.5 1 ~ ~1 ~ 0.7 0.7 0.7 0 20
execute at @s[scores={ui_use2=40}] run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.2 0

execute as @s[scores={ui_use2=40..},tag=tmw_use_c] run function ui:tmw/234/1