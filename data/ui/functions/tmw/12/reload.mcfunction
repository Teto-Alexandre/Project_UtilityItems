#=======================================================================================================

# 旧verアイテム転置
#data modify block 0 0 0 RecordItem set from entity @s Inventory.[{Slot:-106b}]
#data modify block 0 0 0 RecordItem.id set value "minecraft:lingering_potion"
#data modify block 0 0 0 RecordItem.tag.display.Lore append value '[{"text":"[","color":"gray","italic":false,"bold":false},{"text":"即席龍素注入ボトル","color":"yellow","italic":false,"bold":true},{"text":"] で加工済","color":"gray","italic":false,"bold":false}]'

# 旧verアイテム転置.2
#（/itemのmodifyをこんな一機能のためだけに追加してられないのでドロッパーデータ技法でコマンド解決ができるようにしている）
#execute in overworld run item replace block 0 0 0 container.0 from entity @s weapon.offhand
#execute in overworld run data modify block 0 0 0 Items.[{Slot:0b}].id set value "minecraft:lingering_potion"
#execute in overworld run data modify block 0 0 0 Items.[{Slot:0b}].tag.display.Lore append value '[{"text":"[","color":"gray","italic":false,"bold":false},{"text":"即席龍素注入ボトル","color":"yellow","italic":false,"bold":true},{"text":"] で加工済","color":"gray","italic":false,"bold":false}]'

# 新verアイテム転置
    summon armor_stand ~ ~ ~ {Tags:["ui_temp"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{id:"stone",Count:1b},{},{},{}]}
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0] set from entity @s Inventory.[{Slot:-106b}]
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].id set value "minecraft:lingering_potion"
    data modify entity @e[tag=ui_temp,limit=1] ArmorItems.[0].tag.display.Lore append value '[{"text":"[","color":"gray","italic":false,"bold":false},{"text":"即席龍素注入ボトル","color":"yellow","italic":false,"bold":true},{"text":"] で加工済","color":"gray","italic":false,"bold":false}]'
    item replace entity @s weapon.offhand from entity @e[tag=ui_temp,limit=1] armor.feet
    item replace entity @s weapon.mainhand with air
    kill @e[tag=ui_temp]

#
    playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.5 0

#=======================================================================================================
