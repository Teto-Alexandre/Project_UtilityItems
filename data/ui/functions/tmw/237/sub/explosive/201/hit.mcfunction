# 命中処理
    scoreboard players operation #temp tds_dmg = @s ui_dmg
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/sub/explosive/201/hit_ent