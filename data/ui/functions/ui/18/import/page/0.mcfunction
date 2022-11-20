# データ読み取り

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players add $qf ui_temp 1
    execute if score $slot ui_temp matches 2 if score $qf ui_temp matches 3.. run scoreboard players set $qf ui_temp 1
    execute if score $slot ui_temp matches 3 run scoreboard players set $page ui_temp 1
    execute if score $slot ui_temp matches 4 run scoreboard players set $page ui_temp 11
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    #
    item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    execute if score $qf ui_temp matches 1 run item replace entity @s enderchest.2 with lime_stained_glass_pane{display:{Name:'{"text":"System: Sub and Special","color":"white","italic":false}',Lore:['{"text":"Q: Sub weapon","color":"gray","italic":false}','{"text":"F: Special weapon","color":"gray","italic":false}']},ui:{ismenu:1}}
    execute if score $qf ui_temp matches 2 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"System: Sub and Sub","color":"white","italic":false}',Lore:['{"text":"Q: Sub Weapon 1","color":"gray","italic":false}','{"text":"F: Sub Weapon 2","color":"gray","italic":false}','{"text":"Auto: Ink regain","color":"gray","italic":false}']},ui:{ismenu:1}}
    execute if score $qf ui_temp matches 1..2 run item replace entity @s enderchest.3 with iron_sword{display:{Name:'{"text":"Select sub weapon","color":"white","italic":false}',Lore:['{"text":"click to open","color":"gray","italic":false}']},ui:{ismenu:1}}
    execute if score $qf ui_temp matches 1 run item replace entity @s enderchest.4 with diamond_sword{display:{Name:'{"text":"Select special weapon","color":"white","italic":false}',Lore:['{"text":"click to open","color":"gray","italic":false}']},ui:{ismenu:1}}
    execute if score $qf ui_temp matches 2 run item replace entity @s enderchest.4 with golden_sword{display:{Name:'{"text":"Select sub weapon 2","color":"white","italic":false}',Lore:['{"text":"click to open","color":"gray","italic":false}']},ui:{ismenu:1}}
    item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #
    item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.26 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

# 変更した
    scoreboard players set $success ui_temp 1