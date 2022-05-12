# 秒数制限取得
    execute store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax

# 離すと書き込み
    scoreboard players operation @s ui_use2 < $burst.max ui_temp
    execute if score $ink ui_temp matches 0.. as @s[tag=tmw_use_c] run function ui:tmw/237/burst3.2

# タメ
    scoreboard players remove $burst.max ui_temp 5
    execute if score @s ui_use2 = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
    execute if score @s ui_use2 < $burst.max ui_temp at @s run playsound block.lever.click player @a ~ ~ ~ 1 1.4 0

# クリック回数リセット
    scoreboard players reset @s ui_use1