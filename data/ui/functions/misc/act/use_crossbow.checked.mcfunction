# 矢を消滅させる
    #kill @e[type=arrow,tag=!ui_powered,sort=nearest,limit=1,distance=..5]

# 付与
    execute if score $check ui_temp matches 1 as @s[scores={ui_st=..0}] run tag @s add tmw_crossbow_mh_n
    execute if score $check ui_temp matches 1 as @s[scores={ui_st=1..}] run tag @s add tmw_crossbow_mh_s
    execute if score $check ui_temp matches 2 as @s[scores={ui_st=..0}] run tag @s add tmw_crossbow_oh_n
    execute if score $check ui_temp matches 2 as @s[scores={ui_st=1..}] run tag @s add tmw_crossbow_oh_s