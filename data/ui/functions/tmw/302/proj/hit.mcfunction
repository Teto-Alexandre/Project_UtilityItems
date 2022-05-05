# ヒット
    scoreboard players operation #temp tds_dmg = @s ui_dmg
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute if score @s ui_bt matches 1 as @e[tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit1
    execute if score @s ui_bt matches 2 as @e[tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit2
    execute if score @s ui_bt matches -1 as @e[tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/302/proj/hit-1

# 消失
    function ui:tmw/302/proj/kill