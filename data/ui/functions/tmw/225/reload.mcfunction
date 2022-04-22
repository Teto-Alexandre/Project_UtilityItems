#=======================================================================================

#アイテム転置
    data modify storage ui:temp tag set from entity @s Inventory[{Slot:-106b}].tag
    data modify storage ui:temp tag.tmw.gun.auto set value 1
    data modify storage ui:temp tag.tmw.enableF set value 1
    data modify storage ui:temp tag.display.Lore append value '[{"text":"[","color":"gray","italic":false,"bold":false},{"text":"オートリローダー","color":"light_purple","italic":false},{"text":"] で加工済","color":"gray","italic":false,"bold":false}]'
    item modify entity @s weapon.offhand ui:tempout
    item modify entity @s weapon.offhand ui:displayout
    item replace entity @s weapon.mainhand with air

#
    playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.8 0
    playsound minecraft:item.spyglass.use player @a ~ ~ ~ 1 1 0
    playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8 0

#=======================================================================================
