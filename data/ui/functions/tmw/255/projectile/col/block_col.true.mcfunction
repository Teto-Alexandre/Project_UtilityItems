execute if score $break ui_temp matches 10.. if block ~ ~ ~ #ui:super_weak run function ui:tmw/255/projectile/col/col1
execute if score $break ui_temp matches 30.. unless block ~ ~ ~ #ui:super_weak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:nocol run function ui:tmw/255/projectile/col/col3
execute if score $break ui_temp matches 100.. if block ~ ~ ~ #ui:super_hard run function ui:tmw/255/projectile/col/col10
execute if score $break ui_temp matches 1500.. if block ~ ~ ~ #ui:nobreak run function ui:tmw/255/projectile/col/col150
execute unless block ~ ~ ~ #ui:nocol run tag @s add tmw_255_proj_del
execute if score $break ui_temp matches ..0 run tag @s add tmw_255_proj_del