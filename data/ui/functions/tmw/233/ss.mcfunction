#
    execute as @e[tag=tmw_233_1,nbt={PortalCooldown:0}] at @s run function ui:tmw/233/after
    
#付属品
    execute if entity @e[tag=tmw_233_1] run schedule function ui:tmw/233/ss 1t append