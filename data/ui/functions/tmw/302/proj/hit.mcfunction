# エンティティ判定依存のデメリット解消
    execute if score @s ui_id matches 1.. run tag @s add ui_temp
    execute if score @s ui_id matches 1.. run scoreboard players reset @e[scores={ui_idc=-214748348..}] ui_idc
    execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
    execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc -= @e[tag=ui_temp] ui_id
    execute if score @s ui_id matches 1.. run tag @e[scores={ui_idc=0}] add ui_temp2
    execute if score @s ui_id matches 1.. run tag @s remove ui_temp

# ヒット
    execute if score @s ui_bt matches 1 as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit1
    execute if score @s ui_bt matches 2 as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit2
    execute if score @s ui_bt matches -1 as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit-1
    tag @e[tag=ui_temp2] remove ui_temp2

# 消失
    function ui:tmw/302/proj/kill