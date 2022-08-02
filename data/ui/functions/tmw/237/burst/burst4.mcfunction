# 秒数制限取得
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmax/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmax/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmax/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmax/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmax/sub

# 離すと書き込み
    scoreboard players operation @s ui_use2 < $burst.max ui_temp
    execute if score $ink ui_temp matches 0.. as @s[tag=tmw_use_c] run function ui:tmw/237/burst/burst4.2

# タメ
    scoreboard players remove $burst.max ui_temp 5
    execute if score @s ui_use2 = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
    execute if score @s ui_use2 < $burst.max ui_temp at @s run playsound block.lever.click player @a ~ ~ ~ 1 1.4 0

# クリック回数リセット
    tag @s[tag=tmw_use_n] remove tmw_use_n
    tag @s[tag=tmw_use_s] remove tmw_use_s
    scoreboard players set @s ui_use1 0