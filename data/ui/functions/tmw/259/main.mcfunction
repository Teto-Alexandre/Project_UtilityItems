# スキルツリーメーカー
    scoreboard players set $changed ui_temp 0
    execute as @s[tag=tmw_use_n] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-0.5 ~ diamond_block run function ui:tmw/259/diamond_block
    execute as @s[tag=tmw_use_n] if score $changed ui_temp matches 0 at @s run playsound block.dispenser.fail player @a ~ ~ ~ 1 1 0
