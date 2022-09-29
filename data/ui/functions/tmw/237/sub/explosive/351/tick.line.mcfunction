# メガホンの出る部分

# 弾を出す
    scoreboard players operation $c.proj.team ui_temp = @s ui_team
    scoreboard players set $c.proj.speed ui_temp 100
    scoreboard players set $c.proj.range ui_temp 10
    scoreboard players set $c.proj.particle ui_temp 8

summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","tmw_237_Punit","tmw_237_Punit_unpower"]}
summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute as @e[tag=tmw_237_Punit_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^ ~ ~
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_team = $c.proj.team ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bm = $c.proj.speed ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_br = $c.proj.range ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bpart = $c.proj.particle ui_temp

    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #10 ui_num
    execute if score $temp ui_temp matches 0 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-7.2 ~ ~
    execute if score $temp ui_temp matches 1 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-6.4 ~ ~
    execute if score $temp ui_temp matches 2 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-5.6 ~ ~
    execute if score $temp ui_temp matches 3 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-4.8 ~ ~
    execute if score $temp ui_temp matches 4 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-4.0 ~ ~
    execute if score $temp ui_temp matches 5 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-3.2 ~ ~
    execute if score $temp ui_temp matches 6 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-2.4 ~ ~
    execute if score $temp ui_temp matches 7 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-1.6 ~ ~
    execute if score $temp ui_temp matches 8 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-0.8 ~ ~
    execute if score $temp ui_temp matches 9 as @e[tag=tmw_237_Punit_unpower] run teleport @s ^ ^ ^-0.0 ~ ~

tag @e[tag=tmw_237_Punit_unpower] remove tmw_237_Punit_unpower
kill @e[tag=ui_marker]

# temp
scoreboard players reset $c.proj.team ui_temp
scoreboard players reset $c.proj.spread ui_temp
scoreboard players reset $c.proj.speed ui_temp
scoreboard players reset $c.proj.range ui_temp
scoreboard players reset $c.proj.particle ui_temp