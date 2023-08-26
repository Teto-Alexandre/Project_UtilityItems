execute if score @s ui_st2 matches 1 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> ｧァ・・・"}]
execute if score @s ui_st2 matches 11 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> ア・・・ァ・・・"}]
execute if score @s ui_st2 matches 21 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> アァァァァァァ！！ ｱｯ！ アァァァァァァ！！！！"}]

execute if score @s ui_st2 matches 21.. run playsound entity.ender_dragon.death player @a ~ ~ ~ 2 2 0
execute if score @s ui_st2 matches 21.. run playsound entity.ender_dragon.death player @a ~ ~ ~ 2 1.5 0
execute if score @s ui_st2 matches 21.. run playsound entity.ender_dragon.death player @a ~ ~ ~ 2 1 0
execute if score @s ui_st2 matches 21.. run playsound entity.ender_dragon.death player @a ~ ~ ~ 2 0.5 0
execute if score @s ui_st2 matches 21.. run effect give @a[tag=!ui_temp_player] slowness 10 5 true
execute if score @s ui_st2 matches 21.. run effect give @a[tag=!ui_temp_player] blindness 10 5 true
execute if score @s ui_st2 matches 21.. run tag @s add ui_temp_del