#=======================================================================================

#ダメージ
    #プレイヤーと重なっている間は当たり判定がない
        execute at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s remove ui_224_nohit
    #ダメージ判定
        execute if entity @s[tag=!ui_224_nohit] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run function ui:tmw/224/proj/hit
        execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon snowball ~ ~2.5 ~ {Motion:[0.0d,-0.5d,0.0d]}
        execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=shulker_bullet] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=shulker_bullet] at @s as @e[type=shulker_bullet,sort=nearest,limit=1] run kill @s

#=======================================================================================