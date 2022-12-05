# リンク元が存在するなら

#
    execute unless data entity @s ArmorItems[0].tag.tmw.skilltree.need[2] run data modify entity @s ArmorItems[0].tag.tmw.skilltree.need append value []
    execute unless data entity @s ArmorItems[0].tag.tmw.skilltree.need[2] run data modify entity @s ArmorItems[0].tag.tmw.skilltree.need append value []
    execute unless data entity @s ArmorItems[0].tag.tmw.skilltree.need[2] run data modify entity @s ArmorItems[0].tag.tmw.skilltree.need append value []
    data modify entity @s ArmorItems[0].tag.tmw.skilltree.need[2] append from storage ui:temp num
