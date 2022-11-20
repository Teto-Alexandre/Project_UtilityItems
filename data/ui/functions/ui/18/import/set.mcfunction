# データ読み取り
    data modify storage ui:gun temp set from entity @s EnderItems[{Slot:8b}].tag
    execute store result score $page ui_temp run data get storage ui:gun temp.tmw.gun.now.EPage
    execute store result score $qf ui_temp run data get storage ui:gun temp.tmw.gun.now.QFType
    execute store result score $sub ui_temp run data get storage ui:gun temp.tmw.gun.SubType
    execute store result score $sp ui_temp run data get storage ui:gun temp.tmw.gun.SPType

#
    execute if score $page ui_temp matches 0 run function ui:tmw/243/core/page/0
    execute if score $page ui_temp matches 1 run function ui:tmw/243/core/page/1
    execute if score $page ui_temp matches 2 run function ui:tmw/243/core/page/2
    execute if score $page ui_temp matches 11 if score $qf ui_temp matches 1 run function ui:tmw/243/core/page/11
    execute if score $page ui_temp matches 12 if score $qf ui_temp matches 1 run function ui:tmw/243/core/page/12
    execute if score $page ui_temp matches 11 if score $qf ui_temp matches 2 run function ui:tmw/243/core/page/1alt
    execute if score $page ui_temp matches 12 if score $qf ui_temp matches 2 run function ui:tmw/243/core/page/2alt