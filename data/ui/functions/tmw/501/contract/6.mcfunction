# 
    tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[送還の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    particle totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.1 15 normal

    summon marker ~ ~ ~ {Tags:["ui","ui_marker"]}
    execute store result score $x1 ui_temp run data get entity @s SpawnX 10
    execute store result score $y1 ui_temp run data get entity @s SpawnY 10
    execute store result score $z1 ui_temp run data get entity @s SpawnZ 10
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[0] double 0.1 run scoreboard players get $x1 ui_temp
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[1] double 0.1 run scoreboard players get $y1 ui_temp
    execute store result entity @e[tag=ui_marker,limit=1] Pos.[2] double 0.1 run scoreboard players get $z1 ui_temp
    tp @s @e[tag=ui_marker,limit=1]
    kill @e[tag=ui_marker]

    execute at @s run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    execute at @s run particle totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.2 15 normal
