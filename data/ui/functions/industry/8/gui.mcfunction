#execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#スロットに入ったアイテムを排出
    function ui:industry/8/checkslot

#レシピ情報をもとに完成品スロットの見た目を設定
    #しない

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
    item replace block ~ ~ ~ container.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #空白
    item replace block ~ ~ ~ container.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #矢印
    item replace block ~ ~ ~ container.13 with gray_stained_glass_pane{CustomModelData:120002,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    #見た目用生成物表示
        #なし

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
    item replace block ~ ~ ~ container.26 with gray_stained_glass_pane
    
# スコアごとに表示内容が変わる
    execute if score @s ui_i_gui_recipe matches 1 run data modify block ~ ~ ~ Items[{Slot:26b}] set from storage ui:industry/8 recipe
    execute if score @s ui_i_gui_recipe matches 2 run data modify block ~ ~ ~ Items[{Slot:26b}] set from storage ui:industry/8 recipe2
    execute if score @s ui_i_gui_recipe matches 3 run data modify block ~ ~ ~ Items[{Slot:26b}] set from storage ui:industry/8 recipe3

#ボタン押したらアイテム排出
    #しない