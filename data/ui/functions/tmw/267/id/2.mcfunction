execute if score @s ui_st2 matches 1 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 痛いの痛いのゲロパチョミ！"}]

execute if score @s ui_st2 matches 1.. run effect clear @a[tag=!ui_temp_player]
execute if score @s ui_st2 matches 1.. run tag @s add ui_temp_del