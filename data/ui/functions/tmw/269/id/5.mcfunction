execute if score @s ui_st2 matches 1 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> 導きますよ？"}]
execute if score @s ui_st2 matches 11 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> すべて"}]

execute if score @s ui_st2 matches 11.. run playsound entity.elder_guardian.curse player @a ~ ~ ~ 2 2 0
execute if score @s ui_st2 matches 11.. run tp @a[tag=!ui_temp_player] @a[tag=ui_temp_player,limit=1]
execute if score @s ui_st2 matches 11.. run effect give @a[tag=ui_temp_player] blindness 10 5 true
execute if score @s ui_st2 matches 11.. run effect give @a[tag=ui_temp_player] levitation 1000000 0 true
execute if score @s ui_st2 matches 11.. run tag @s add ui_temp_del