scoreboard players add @s ui_st2 1
execute if score @s ui_stl matches 0.. run scoreboard players operation @s ui_stlb = @s ui_stl
execute if score @s ui_stl matches 0.. run scoreboard players set @s ui_stl -1
scoreboard players set @s ui_st 0