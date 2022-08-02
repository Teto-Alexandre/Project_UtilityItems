# エンダーコア
    scoreboard players set $changed ui_temp 0
    execute as @s[tag=tmw_use_n] at @s if block ~ ~-0.5 ~ ender_chest run function ui:tmw/243/ender
    execute as @s[tag=tmw_use_n] if score $changed ui_temp matches 0 at @s run playsound block.dispenser.fail player @a ~ ~ ~ 1 1 0
