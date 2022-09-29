# メガホンの出る部分

# 弾を出す
    scoreboard players operation $c.proj.team ui_temp = @s ui_team
    scoreboard players set $c.proj.speed ui_temp 200
    scoreboard players set $c.proj.range ui_temp 20
    scoreboard players set $c.proj.particle ui_temp 4

summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","tmw_237_Punit","tmw_237_Punit_unpower"]}
summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute as @e[tag=tmw_237_Punit_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet positioned ~ ~1.5 ~ run teleport @s ^ ^ ^6 ~ ~
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_team = $c.proj.team ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bm = $c.proj.speed ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_br = $c.proj.range ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bpart = $c.proj.particle ui_temp

    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #5 ui_num
    execute if score $temp ui_temp matches 1 as @e[tag=tmw_237_Punit_unpower] at @s run teleport @s ^ ^ ^0.4 ~ ~
    execute if score $temp ui_temp matches 2 as @e[tag=tmw_237_Punit_unpower] at @s run teleport @s ^ ^ ^0.8 ~ ~
    execute if score $temp ui_temp matches 3 as @e[tag=tmw_237_Punit_unpower] at @s run teleport @s ^ ^ ^1.2 ~ ~
    execute if score $temp ui_temp matches 4 as @e[tag=tmw_237_Punit_unpower] at @s run teleport @s ^ ^ ^1.6 ~ ~

tag @e[tag=tmw_237_Punit_unpower] remove tmw_237_Punit_unpower
kill @e[tag=ui_marker]

# temp
scoreboard players reset $c.proj.team ui_temp
scoreboard players reset $c.proj.spread ui_temp
scoreboard players reset $c.proj.speed ui_temp
scoreboard players reset $c.proj.range ui_temp
scoreboard players reset $c.proj.particle ui_temp