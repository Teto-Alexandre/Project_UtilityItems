# 見た目
    execute if score @s ui_temp matches ..9 run scoreboard players add @s ui_is 1
    scoreboard players set @s ui_bdt 2
    execute if score @s ui_is matches 5..10 run particle flame ~ ~ ~ 0 0 0 0.03 1 force
    execute if score @s ui_is matches 5..10 run fill ~ ~-1 ~ ~ ~ ~ fire replace #ui:nocol
    execute if score @s ui_is matches 10.. run particle small_flame ~ ~ ~ 0 0 0 0.03 1 force

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
    execute if score @s ui_is matches 15.. run function ui:tmw/237/projectile/kill
