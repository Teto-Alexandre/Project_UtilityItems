# スキルツリーメーカーアクティベート
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id
    execute as @e[tag=tmw_268] if score $obj_id ui_temp = @s ui_obj_id run tag @s add ui_temp_obj

    execute as @e[tag=ui_temp_obj,tag=tmw_268_diamond] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_block",Count:1b}}
    execute as @e[tag=ui_temp_obj,tag=tmw_268_diamond] at @s run particle block diamond_block ~ ~ ~ 0.5 0.5 0.5 0 15
    execute as @e[tag=ui_temp_obj,tag=tmw_268_diamond] at @s run playsound block.metal.break block @a ~ ~ ~ 1 1 0
    execute as @e[tag=ui_temp_obj,tag=tmw_268_diamond] run kill @s
    
    execute as @e[tag=ui_temp_obj,tag=tmw_268_iron] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:1b}}
    execute as @e[tag=ui_temp_obj,tag=tmw_268_iron] at @s run particle block iron_block ~ ~ ~ 0.5 0.5 0.5 0 15
    execute as @e[tag=ui_temp_obj,tag=tmw_268_iron] at @s run playsound block.metal.break block @a ~ ~ ~ 1 1 0
    execute as @e[tag=ui_temp_obj,tag=tmw_268_iron] run kill @s
    
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"oID","color": "gray"},{"score":{"name": "$obj_id","objective": "ui_temp"},"color": "aqua"},{"text":"の機体が分解されました","color": "gray"}]
    scoreboard players remove $tmw268 ui_temp 1
    tellraw @a [{"text":"JointGear","color": "gray"},{"text": "> ","color": "green"},{"text":"世界機体数が","color": "gray"},{"score":{"name": "$tmw268","objective": "ui_temp"},"color": "aqua"},{"text":"になりました","color": "gray"}]
    #schedule function ui:tmw/268/ss 1t replace
    scoreboard players set $changed ui_temp 1
    playsound ui.button.click player @a ~ ~ ~ 1 1 0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.4 0

    execute as @e[tag=ui_temp_obj,type=shulker] at @s run teleport @s ~ -300 ~
    kill @e[tag=ui_temp_obj]

    tag @e[tag=ui_temp_obj] remove ui_temp_obj