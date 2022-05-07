# 命中処理
    summon marker ^ ^ ^-3 {Tags:["ui_temp_target"]}
    scoreboard players operation $Knockback tds_dmg = @s ui_kb
    scoreboard players operation #temp tds_dmg = @s ui_dmg
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute as @a[distance=20..] if score @s ui_id = $Attacker tds_dmg at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2 0
    execute as @e[tag=!ui_temp,type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/235/proj/hit1
    kill @e[tag=ui_temp_target]
    
# 消失
    function ui:tmw/235/proj/kill