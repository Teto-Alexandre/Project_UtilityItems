# 離すと書き込み
    execute if score $burst ui_temp matches 1.. run scoreboard players set @s ui_use2 0
    execute if score $cooltime ui_temp matches 1.. run scoreboard players set @s ui_use2 0
    execute if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $ammo ui_temp matches 0.. as @s[tag=tmw_use_c] run function ui:tmw/235/burst3.2

# タメ
    execute at @s run playsound block.lever.click player @a ~ ~ ~ 1 1.4 0

# クリック回数リセット
    scoreboard players reset @s ui_use1