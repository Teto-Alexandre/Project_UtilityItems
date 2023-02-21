#

#
summon armor_stand ~ ~ ~ {Tags:["ui_temp_obj"],CustomNameVisible:1b,CustomName:'{"text":"null"}',NoGravity:1b}
execute as @e[tag=ui_temp_obj] run data modify entity @s CustomName set from storage ui:temp temp.text[0]
tag @e[tag=ui_temp_obj] remove ui_temp_obj

# 回数減算
scoreboard players remove $count ui_temp 1
data remove storage ui:temp temp.text[0]

# まだあるなら
execute if score $count ui_temp matches 1.. positioned ~ ~-0.3 ~ run function ui:tmw/16/text_output
