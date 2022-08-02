# 最初に発射元に発射エフェクトを出す

# temp
scoreboard players operation $c.proj.team ui_temp = $team ui_temp
scoreboard players set $c.proj.spread ui_temp 400
scoreboard players set $c.proj.speed ui_temp 60
scoreboard players set $c.proj.range ui_temp 60
scoreboard players set $c.proj.particle ui_temp 1
execute as @a if score @s ui_id = $id ui_temp at @s rotated ~ -90 run function ui:tmw/237/particle_unit/summon