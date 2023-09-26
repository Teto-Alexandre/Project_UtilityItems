#
execute at @s if score $is ui_temp matches 1 run summon text_display ~ ~ ~ {Tags:["ui_common_projectile_31_display"],text:'{"text":"DEBUG","color":"black","bold": true,"italic":false}',background:0,billboard:"center"}
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/upper/31/display/ss

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #3 ui_num

#
execute if score $is ui_temp matches 1.. run kill @s
