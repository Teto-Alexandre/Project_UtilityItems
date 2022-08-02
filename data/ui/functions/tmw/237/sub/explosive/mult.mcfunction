# 設置数制限

# 処理終了
    execute as @e[tag=tmw_237_sub_mult] if score @s ui_id = $id ui_temp run tag @s[tag=!ui_temp_this] add ui_temp_random
    tag @e[tag=ui_temp_random,sort=random,limit=1] add ui_temp_random2
    teleport @e[tag=ui_temp_random2] ~ ~-300 ~
    kill @e[tag=ui_temp_random2]
    tag @e[tag=ui_temp_random] remove ui_temp_random