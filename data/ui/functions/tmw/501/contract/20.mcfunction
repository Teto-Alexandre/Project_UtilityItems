# 
    tellraw @s [{"text":"> ","color":"white"},{"text":"リスポーン地点に移動します・・・","color":"gray"}]

    playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.5 0
    particle dust 1 0 1 1 ~ ~1 ~ 0.3 0.6 0.3 0.1 15 normal
    particle block amethyst_block ~ ~1 ~ 0.3 0.6 0.3 0.1 15 normal

    summon marker ~ ~ ~ {Tags:["ui","ui_marker"]}
    execute store result score $x1 ui_temp run data get entity @s SpawnX 10
    execute store result score $y1 ui_temp run data get entity @s SpawnY 10
    execute store result score $z1 ui_temp run data get entity @s SpawnZ 10
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[0] double 0.1 run scoreboard players get $x1 ui_temp
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[1] double 0.1 run scoreboard players get $y1 ui_temp
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[2] double 0.1 run scoreboard players get $z1 ui_temp
    tp @s @e[tag=ui_marker,limit=1]
    kill @e[tag=ui_marker]

    execute at @s run playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.5 0
    execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.5 0
    execute at @s run particle dust 1 0 1 1 ~ ~1 ~ 0.3 0.6 0.3 0.2 15 normal
    particle block amethyst_block ~ ~1 ~ 0.3 0.6 0.3 0.1 15 normal
    execute at @s run particle witch ~ ~1 ~ 0.3 0.6 0.3 0.2 15 normal
