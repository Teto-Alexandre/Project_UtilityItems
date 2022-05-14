# 命中処理
    #summon marker ^ ^ ^-2 {Tags:["ui_temp_target"]}
    scoreboard players operation #temp tds_dmg = @s ui_dmg
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute if score @s ui_bt matches 1.. as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/305/proj/hit1
    #kill @e[tag=ui_temp_target]
    
# 消失
    function ui:tmw/305/proj/kill