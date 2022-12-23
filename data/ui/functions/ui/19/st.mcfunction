playsound entity.skeleton.death block @a ~ ~ ~
particle block bone_block ~ ~1 ~ 0.4 0.7 0.4 0 16
particle block oak_planks ~ ~1 ~ 0.4 0.7 0.4 0 16
loot spawn ~ ~0.5 ~ loot ui:single_item/ui/19
scoreboard players remove $ui19 ui_world 1

execute store result score $temp ui_temp run fill ~-27 ~-27 ~-27 ~-9 ~-9 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-27 ~-27 ~8 ~-9 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-27 ~-27 ~27 ~-9 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~-8 ~-27 ~-9 ~8 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-8 ~-27 ~8 ~8 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-8 ~-27 ~27 ~8 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~9 ~-27 ~-9 ~27 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~9 ~-27 ~8 ~27 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~9 ~-27 ~27 ~27 ~-9 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~-27 ~-8 ~-9 ~-9 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-27 ~-8 ~8 ~-9 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-27 ~-8 ~27 ~-9 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~-8 ~-8 ~-9 ~8 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-8 ~-8 ~27 ~8 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~9 ~-8 ~-9 ~27 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~9 ~-8 ~8 ~27 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~9 ~-8 ~27 ~27 ~8 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~-27 ~9 ~-9 ~-9 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-27 ~9 ~8 ~-9 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-27 ~9 ~27 ~-9 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~-8 ~9 ~-9 ~8 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~-8 ~9 ~8 ~8 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~-8 ~9 ~27 ~8 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-27 ~9 ~9 ~-9 ~27 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~-8 ~9 ~9 ~8 ~27 ~27 air replace white_stained_glass
execute store result score $temp ui_temp run fill ~9 ~9 ~9 ~27 ~27 ~27 air replace white_stained_glass

kill @s