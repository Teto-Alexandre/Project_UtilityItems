# 命中処理
    scoreboard players operation #temp tds_dmg = $damage ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/sub/explosive/151/hit_ent