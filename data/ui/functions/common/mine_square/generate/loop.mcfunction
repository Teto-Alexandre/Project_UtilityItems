#

#
execute as @e[tag=ui_temp_particle,sort=random,limit=1] at @s unless entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run summon armor_stand ~ ~ ~ {Tags:["ui_common_mine_square","ui_common_mine_square_bomb"],Marker:1b,NoGravity:1b,Invisible:1b}
scoreboard players remove $num ui_temp 1
execute if score $num ui_temp matches 1.. run function ui:common/mine_square/generate/loop