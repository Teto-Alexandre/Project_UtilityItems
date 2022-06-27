# メガホンの出る部分

# 弾を出す
    scoreboard players operation $c.proj.team ui_temp = @s ui_team
    scoreboard players set $c.proj.speed ui_temp 1360
    scoreboard players set $c.proj.range ui_temp 136
    scoreboard players set $c.proj.particle ui_temp 2
    function ui:tmw/237/particle_unit/summon