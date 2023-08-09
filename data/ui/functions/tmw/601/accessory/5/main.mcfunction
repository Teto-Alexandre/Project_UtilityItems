# 肉塊の模倣

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 1 1 1 1.5 ~ ~0.9 ~ 0.4 0.4 0.4 0 20
execute if entity @s[tag=tmw601_changed] run particle firework ~ ~0.9 ~ 0 0 0 0.1 20
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1

#
scoreboard players set $temp ui_temp 0
execute as @a[scores={ui_tmw601_accessory=5005}] run scoreboard players add $temp ui_temp 1
execute if score $temp ui_temp matches 2.. run item replace entity @a[scores={ui_tmw601_accessory=5005}] inventory.0 with air
execute if score $temp ui_temp matches 2.. run playsound entity.wither.death player @a ~ ~ ~ 1 0.5 1
execute if score $temp ui_temp matches 2.. run tellraw @a [{"text":"ParadiseLost","color":"gray"},{"text":"> ","color":"green"},{"text":"[","color": "white"},{"text":"救済の権能","color": "white","bold": true},{"text":"]","color": "white"},{"text":"が対消滅しました"}]

#
execute store result score $time_temp ui_temp run time query gametime
scoreboard players operation $time_temp ui_temp %= #16 ui_num
execute if score $time_temp ui_temp matches 0 at @s positioned ~ ~2.2 ~ rotated 0.000 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 1 at @s positioned ~ ~2.2 ~ rotated 3.281 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 2 at @s positioned ~ ~2.2 ~ rotated 6.562 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 3 at @s positioned ~ ~2.2 ~ rotated 9.843 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 4 at @s positioned ~ ~2.2 ~ rotated 13.124 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 5 at @s positioned ~ ~2.2 ~ rotated 16.405 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 6 at @s positioned ~ ~2.2 ~ rotated 19.686 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 7 at @s positioned ~ ~2.2 ~ rotated 22.967 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 8 at @s positioned ~ ~2.2 ~ rotated 26.248 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 9 at @s positioned ~ ~2.2 ~ rotated 29.529 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 10 at @s positioned ~ ~2.2 ~ rotated 32.81 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 11 at @s positioned ~ ~2.2 ~ rotated 36.091 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 12 at @s positioned ~ ~2.2 ~ rotated 39.372 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 13 at @s positioned ~ ~2.2 ~ rotated 42.653 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 14 at @s positioned ~ ~2.2 ~ rotated 45.934 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 15 at @s positioned ~ ~2.2 ~ rotated 49.215 90 run function ui:common/particle/ss/upper/25/ring/base
execute if score $time_temp ui_temp matches 0 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.5 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 1 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.515 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 2 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.558 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 3 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.623 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 4 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.700 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 5 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.777 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 6 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.841 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 7 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.885 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 8 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.8 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 9 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.885 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 10 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.841 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 11 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.777 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 12 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.700 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 13 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.623 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 14 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.558 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
execute if score $time_temp ui_temp matches 15 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.515 run particle dust 1 0.8 0 0.4 ~ ~ ~ 0 0.05 0 0 2
kill @e[tag=ui_temp_particle_10026_ring]
kill @e[tag=ui_temp_particle_10026_center]
scoreboard players reset $time_temp ui_temp
