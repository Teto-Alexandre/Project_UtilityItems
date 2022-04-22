#ブロックにぶつかったときの反応

# 貫通
    execute if score $gun.break ui_world matches 1.. if score @s ui_gpc matches 1.. if block ~ ~ ~ #ui:super_weak run function ui:tmw/305/proj/col1
    execute if score $gun.break ui_world matches 1.. if score @s ui_gpc matches 3.. unless block ~ ~ ~ #ui:super_weak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:nocol run function ui:tmw/305/proj/col3
    execute if score $gun.break ui_world matches 1.. if score @s ui_gpc matches 10.. if block ~ ~ ~ #ui:super_hard run function ui:tmw/305/proj/col10
    execute if score $gun.break ui_world matches 1.. if score @s ui_gpc matches 150.. if block ~ ~ ~ #ui:nobreak run function ui:tmw/305/proj/col150

# 消失
    execute if score $gun.break ui_world matches 1.. unless block ~ ~ ~ #ui:nocol run function ui:tmw/305/proj/kill
    execute if score $gun.break ui_world matches 1.. if score @s ui_gpc matches ..0 run function ui:tmw/305/proj/kill
    execute unless score $gun.break ui_world matches 1.. run function ui:tmw/305/proj/kill

# 耐えた時もこのtickの移動はおしまい
    tag @s add ui_temp_col