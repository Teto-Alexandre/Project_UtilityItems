# ドロッパーの上に来たらスキルノードを作成

#
    scoreboard players set $node.check ui_temp 0
    execute unless entity @e[tag=tmw_259_node,distance=..1] run function ui:tmw/259/root/dropper/first

#
    tag @e[tag=tmw_259_node,sort=nearest,limit=1] add ui_temp_unpower

#
    execute store result storage ui:temp num int 1 run scoreboard players get $linkby ui_temp
    execute unless score $linkby ui_temp matches 0 run function ui:tmw/259/root/dropper/linkby/manager
    data remove storage ui:temp num

#
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower

#
    kill @s
    execute if score $node.check ui_temp matches 1 run function ui:tmw/259/root/round_place