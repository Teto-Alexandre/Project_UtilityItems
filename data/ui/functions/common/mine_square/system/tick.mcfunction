#

#
execute as @e[tag=ui_common_mine_square] at @s if entity @s[tag=ui_common_mine_square_press] run function ui:common/mine_square/system/press
execute as @e[tag=ui_common_mine_square] at @s if block ~ ~1 ~ stone_button[powered=true] run function ui:common/mine_square/system/press
