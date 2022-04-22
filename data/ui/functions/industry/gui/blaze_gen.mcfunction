#execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#スロットに入ったアイテムを排出
    function ui:industry/gui/check_slot/blaze_gen

#スロットセット
    item replace block ~ ~ ~ container.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #稼働状態
    execute if score @s ui_i_gui_mode matches 1..2 run item replace block ~ ~ ~ container.4 with lime_stained_glass_pane{display:{Name:'{"italic":false,"color":"green","text":"動作可能"}'},ui:{ismenu:1}}
    execute if score @s ui_i_gui_mode matches 3 run item replace block ~ ~ ~ container.4 with red_stained_glass_pane{display:{Name:'{"italic":false,"color":"red","text":"動作停止中"}'},ui:{ismenu:1}}
    
    item replace block ~ ~ ~ container.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #見た目用生成物表示
    execute if score @s ui_i_item matches 1.. run item replace block ~ ~ ~ container.13 with blaze_powder{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'},ui:{ismenu:1}}
    execute if score @s ui_i_item matches 1.. run execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get @s ui_i_item
    execute if score @s ui_i_item matches 0 run item replace block ~ ~ ~ container.13 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace block ~ ~ ~ container.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
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
    item replace block ~ ~ ~ container.26 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
#ボタン押したらアイテム排出
    execute at @s[tag=ui_i_putout] run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["cs2"]}
    execute at @s[tag=ui_i_putout] run data modify entity @e[tag=cs2,sort=nearest,limit=1] Item set from entity @s ArmorItems[3].tag.ui.Item
    execute at @s[tag=ui_i_putout] store result entity @e[tag=cs2,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s ui_i_item
    execute at @s[tag=ui_i_putout] run tp @e[tag=cs2,sort=nearest,limit=1] @p
    execute at @s[tag=ui_i_putout] run tag @e[tag=cs2,sort=nearest,limit=1] remove cs2
    execute at @s[tag=ui_i_putout] run scoreboard players set @s ui_i_item 0
    execute at @s[tag=ui_i_putout] run tag @s remove ui_i_putout