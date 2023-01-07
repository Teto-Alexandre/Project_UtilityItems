#
    execute as @a[scores={ui_tmw_id_old=262,ui_uses=1..}] at @s run function ui:tmw/262/main
    execute as @a[scores={ui_tmw_id_old2=262,ui_uses=1..}] at @s run function ui:tmw/262/main
    execute as @e[tag=tmw_262] at @s run function ui:tmw/262/explosive

# 付属品
    execute if entity @e[tag=tmw_262] run schedule function ui:tmw/262/ss 1t append