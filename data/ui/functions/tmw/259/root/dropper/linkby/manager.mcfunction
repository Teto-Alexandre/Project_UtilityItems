# リンク元が存在するなら

#
    execute if entity @s[tag=tmw_259_active1] as @e[tag=ui_temp_unpower] run function ui:tmw/259/root/dropper/linkby/active1
    execute if entity @s[tag=tmw_259_active2] as @e[tag=ui_temp_unpower] run function ui:tmw/259/root/dropper/linkby/active2
    execute if entity @s[tag=tmw_259_active3] as @e[tag=ui_temp_unpower] run function ui:tmw/259/root/dropper/linkby/active3
    execute if entity @s[tag=tmw_259_active4] as @e[tag=ui_temp_unpower] run function ui:tmw/259/root/dropper/linkby/active4
    execute if entity @s[tag=tmw_259_active_cant] as @e[tag=ui_temp_unpower] run function ui:tmw/259/root/dropper/linkby/active_cant
    execute store result score $needtotal ui_temp run data get entity @e[tag=ui_temp_unpower,limit=1] ArmorItems[0].tag.tmw.skilltree.needtotal
    execute store result entity @e[tag=ui_temp_unpower,limit=1] ArmorItems[0].tag.tmw.skilltree.needtotal int 1 run scoreboard players set $needtotal ui_temp 1
