# エンティティ判定依存のデメリット解消
    #execute if score @s ui_id matches 1.. run tag @s add ui_temp
    #execute if score @s ui_id matches 1.. run scoreboard players reset @e[scores={ui_idc=-214748348..}] ui_idc
    #execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
    #execute if score @s ui_id matches 1.. as @e[type=!#ui:unhurtable,scores={ui_id=1..}] run scoreboard players operation @s ui_idc -= @e[tag=ui_temp] ui_id
    #execute if score @s ui_id matches 1.. run tag @e[scores={ui_idc=0}] add ui_temp2
    #execute if score @s ui_id matches 1.. run tag @s remove ui_temp

# 命中処理
    #summon marker ^ ^ ^-2 {Tags:["ui_temp_target"]}
    execute if score @s ui_id matches 1.. run scoreboard players operation $Attacker tds_dmg = @s ui_id
    execute at @s[tag=!ui_224_2] as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:tmw/224/proj/hit1
    execute at @s[tag=ui_224_2] as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,tag=!ui_temp2,sort=nearest,limit=1] at @s run function ui:tmw/224/proj/hit2
    tag @e[tag=ui_temp2] remove ui_temp2
    #kill @e[tag=ui_temp_target]
    
# 消失
    function ui:tmw/224/proj/kill