# トルネードの上に向かって噴き出る部分

# 弾を出す
    scoreboard players operation $c.proj.team ui_temp = $team ui_temp
    scoreboard players set $c.proj.speed ui_temp 10
    scoreboard players set $c.proj.range ui_temp 10
    scoreboard players set $c.proj.particle ui_temp 3
    execute rotated 0 -90 run function ui:tmw/237/particle_unit/summon