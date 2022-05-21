# 座標を確定し進路レーンを消去する
    execute if entity @e[tag=ui_17_4_aqua,distance=..0.1] at @e[tag=ui_17_4_mid] run setblock ~ ~-1 ~ light_blue_concrete
    execute if entity @e[tag=ui_17_4_pink,distance=..0.1] at @e[tag=ui_17_4_mid] run setblock ~ ~-1 ~ pink_concrete
    teleport @s @e[tag=ui_17_4_they,distance=..0.1,limit=1]
    kill @e[tag=ui_17_4_they]