#execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#スロットに入ったアイテムを排出
    function ui:industry/10/checkslot

#レシピ情報をもとに完成品スロットの見た目を設定
    execute at @s[scores={ui_i_recipe=1}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:iron_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1008},CustomModelData:211003,display:{Name:'{"text":"鉄のメカニカルパーツ","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=2}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:copper_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1009},CustomModelData:213002,display:{Name:'{"text":"銅のメカニカルパーツ","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=3}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:gold_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1014},CustomModelData:215002,display:{Name:'{"text":"金のメカニカルパーツ","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=10}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:amethyst_shard",Count:1b,Slot:15b,tag:{tmw:{id:1015},CustomModelData:216001,display:{Name:'{"text":"精製アメジスト","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=11}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:iron_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1006},CustomModelData:211002,display:{Name:'{"text":"アナザー合金","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=12}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:copper_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1007},CustomModelData:213001,display:{Name:'{"text":"伝導合金","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=13}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:iron_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1012},CustomModelData:211005,display:{Name:'{"italic":false,"color":"light_purple","text":"蒼天銀インゴット"}',Lore:['{"text":"幾度の加工で完全になった天銀","color":"gray","italic":false}','{"text":"エーテリウムとは似て非なる物質","color":"gray","italic":false}','{"text":"素材としての利用価値が高い","color":"gray","italic":false}']}}}
    execute at @s[scores={ui_i_recipe=14}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:gold_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1013},CustomModelData:215001,display:{Name:'{"text":"金の糸","color":"white","italic":false}'}}}
    execute at @s[scores={ui_i_recipe=15}] run data modify entity @s ArmorItems[3].tag.ui.Item set value {id:"minecraft:iron_ingot",Count:1b,Slot:15b,tag:{tmw:{id:1004},CustomModelData:211001,display:{Name:'{"italic":false,"color":"light_purple","text":"工業用エーテリウム塊"}',Lore:['{"text":"天銀にエーテリウムを吸収させ","color":"gray","italic":false}','{"text":"変質を促した合金","color":"gray","italic":false}','{"text":"エーテリウムの塊と互換性がある","color":"gray","italic":false}']}}}

#スロットセット
    item replace block ~ ~ ~ container.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #稼働状態
    function ui:industry/gui/craft_display

    item replace block ~ ~ ~ container.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #空白
    #空白
    item replace block ~ ~ ~ container.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #矢印
    item replace block ~ ~ ~ container.13 with gray_stained_glass_pane{CustomModelData:120002,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #見た目用生成物表示
    execute if score @s ui_i_item matches 1.. run data modify block ~ ~ ~ Items[{Slot:15b}] set from entity @s ArmorItems[3].tag.ui.Item
    execute if score @s ui_i_item matches 1.. run data modify block ~ ~ ~ Items[{Slot:15b}].tag.ui.ismenu set value 1
    execute if score @s ui_i_item matches 1.. run execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s ui_i_item
    execute if score @s ui_i_item matches 0 run item replace block ~ ~ ~ container.15 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}

    item replace block ~ ~ ~ container.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    function ui:industry/gui/su_display/default
    item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.26 with gray_stained_glass_pane
    data modify block ~ ~ ~ Items[{Slot:26b}] set from storage ui:industry/10 recipe

#ボタン押したらアイテム排出
    execute at @s[tag=ui_i_putout] run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["cs2"]}
    execute at @s[tag=ui_i_putout] run data modify entity @e[tag=cs2,sort=nearest,limit=1] Item set from entity @s ArmorItems[3].tag.ui.Item
    execute at @s[tag=ui_i_putout] store result entity @e[tag=cs2,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s ui_i_item
    execute at @s[tag=ui_i_putout] run tp @e[tag=cs2,sort=nearest,limit=1] @p
    execute at @s[tag=ui_i_putout] run tag @e[tag=cs2,sort=nearest,limit=1] remove cs2
    execute at @s[tag=ui_i_putout] run scoreboard players set @s ui_i_item 0
    execute at @s[tag=ui_i_putout] run tag @s remove ui_i_putout
