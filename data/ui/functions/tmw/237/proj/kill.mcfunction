#弾痕
fill ~ ~ ~ ~ ~ ~ white_wool replace #ui:wools
execute positioned ^ ^ ^-0.5 run particle enchanted_hit ~ ~ ~ 0 0 0 0.25 2
execute positioned ^ ^ ^-0.5 run playsound block.chain.break player @a ~ ~ ~ 0.5 2 0
kill @s