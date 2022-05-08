# この人です
    tag @s add ui_temp

# 予測線表示
    summon marker ~ ~ ~ {Tags:["ui_temp_snow"]}
    #execute positioned ~ ~-0.05 ~ run summon marker ^ ^ ^1.485 {Tags:["ui_temp_snow2"]}
    execute positioned ~ ~0.075 ~ run summon marker ^ ^ ^1.5 {Tags:["ui_temp_snow2"]}
    execute store result score $x1 ui_temp run data get entity @e[tag=ui_temp_snow2,limit=1] Pos.[0] 10000
    execute store result score $y1 ui_temp run data get entity @e[tag=ui_temp_snow2,limit=1] Pos.[1] 10000
    execute store result score $z1 ui_temp run data get entity @e[tag=ui_temp_snow2,limit=1] Pos.[2] 10000
    execute store result score $x2 ui_temp run data get entity @e[tag=ui_temp_snow,limit=1] Pos.[0] 10000
    execute store result score $y2 ui_temp run data get entity @e[tag=ui_temp_snow,limit=1] Pos.[1] 10000
    execute store result score $z2 ui_temp run data get entity @e[tag=ui_temp_snow,limit=1] Pos.[2] 10000
    execute store result score $x3 ui_temp run data get entity @s Motion.[0] 10000
    execute store result score $y3 ui_temp run data get entity @s Motion.[1] 10000
    execute store result score $z3 ui_temp run data get entity @s Motion.[2] 10000
    scoreboard players operation $x1 ui_temp -= $x2 ui_temp
    scoreboard players operation $y1 ui_temp -= $y2 ui_temp
    scoreboard players operation $z1 ui_temp -= $z2 ui_temp
    scoreboard players operation $x1 ui_temp += $x3 ui_temp
    scoreboard players operation $y1 ui_temp += $y3 ui_temp
    scoreboard players operation $z1 ui_temp += $z3 ui_temp
    #tellraw @a [{"text":"[Snowball]","color":"aqua"},{"text":": x1","color":"gray"},{"score":{"name":"$x1","objective":"temp"}},{"text":", y1","color":"gray"},{"score":{"name":"$y1","objective":"temp"}},{"text":", z1","color":"gray"},{"score":{"name":"$z1","objective":"temp"}}]
    scoreboard players set $temp ui_temp 40
    execute as @e[tag=ui_temp_snow2,limit=1] at @s run function ui:tmw/236/line.a
    kill @e[tag=ui_temp_snow]
    kill @e[tag=ui_temp_snow2]
    tag @a[tag=ui_temp] remove ui_temp
