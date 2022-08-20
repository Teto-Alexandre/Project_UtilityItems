# 命中処理
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/242/hit_ent
    kill @e[tag=ui_temp_target]