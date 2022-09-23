# 命中処理
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/projectile/hit_ent.undeath
    kill @e[tag=ui_temp_target]