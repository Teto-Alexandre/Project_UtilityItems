#
    execute as @e if score @s ui_id = $id ui_temp run tag @s add ui_temp_mark
    tellraw @s {"selector":"@e[tag=ui_temp_mark]"}
    effect give @e[tag=ui_temp_mark] glowing 10 0 true

# クールタイム
    scoreboard players set @s ui_ct 20
