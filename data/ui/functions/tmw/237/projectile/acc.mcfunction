# 同じチームの加速検知
execute at @s[tag=!ui_accd] as @e[tag=ui_c_acc,distance=..4] if score @s ui_team = $team ui_temp as @e[tag=tmw_237,sort=nearest,limit=1] run function ui:tmw/237/misc/accelerator