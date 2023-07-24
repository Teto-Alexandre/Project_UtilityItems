execute if score $break ui_temp matches 25.. if block ~ ~ ~ #ui:super_weak run function ui:tmw/255/projectile/col/col1
execute if score $break ui_temp matches 125.. unless block ~ ~ ~ #ui:nocol unless block ~ ~ ~ #ui:super_weak unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:nobreak run function ui:tmw/255/projectile/col/col5
execute if score $break ui_temp matches 625.. if block ~ ~ ~ #ui:super_hard run function ui:tmw/255/projectile/col/col25
execute if score $break ui_temp matches 7500.. if block ~ ~ ~ #ui:nobreak run function ui:tmw/255/projectile/col/col300
execute unless block ~ ~ ~ #ui:nocol run tag @s add tmw_255_proj_del
execute if score $break ui_temp matches ..0 run tag @s add tmw_255_proj_del