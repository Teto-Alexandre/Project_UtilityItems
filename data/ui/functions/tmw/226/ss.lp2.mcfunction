#
    execute in overworld run item replace block 0 0 0 container.0 with stone
    data modify storage ui:temp tag set from entity @s Inventory[{Slot:35b}].tag
    execute in overworld run data modify block 0 0 0 Items[0] set from storage ui:temp tag.tmw.slot

#
    execute unless entity @s[nbt={Inventory:[{Slot:34b}]}] run function ui:tmw/226/ss.lp3
