#弾丸
    execute as @e[tag=ui_305_1] at @s unless score $bullettime ui_world matches 1.. run function ui:tmw/305/proj/tick
    execute at @e[tag=ui_305_1] if score $bullettime ui_world matches 1.. run particle dust 0 0 0 0.5 ~ ~ ~ 0 0 0 0 1 force
    execute as @e[tag=ui_305_1] if score $bullettime ui_world matches 1.. run scoreboard players set @s ui_id 0

# SSロジック維持
    execute if entity @e[tag=ui_305_1] run schedule function ui:tmw/305/ss 1t append