# ロビーのインベントリ枠
item replace entity @s armor.head with gray_stained_glass_pane{CustomModelData:120008,display:{Name:'{"text": ""}'}}
scoreboard players set $temp ui_temp 0
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] run scoreboard players set $temp ui_temp 1
execute if score $temp ui_temp matches 1 run item replace entity @s armor.chest with air
execute if score $temp ui_temp matches 1 run tellraw @s {"text": "装備はインベントリ内の装備スロットに置いてください"}
scoreboard players set $temp ui_temp 0
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] run scoreboard players set $temp ui_temp 1
execute if score $temp ui_temp matches 1 run item replace entity @s armor.legs with air
execute if score $temp ui_temp matches 1 run tellraw @s {"text": "装備はインベントリ内の装備スロットに置いてください"}
scoreboard players set $temp ui_temp 0
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] run scoreboard players set $temp ui_temp 1
execute if score $temp ui_temp matches 1 run item replace entity @s armor.feet with air
execute if score $temp ui_temp matches 1 run tellraw @s {"text": "装備はインベントリ内の装備スロットに置いてください"}

item replace entity @s inventory.0 with gray_stained_glass_pane{CustomModelData:120004,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.2 with gray_stained_glass_pane{CustomModelData:120005,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.4 with gray_stained_glass_pane{CustomModelData:120006,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.6 with gray_stained_glass_pane{CustomModelData:120007,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}

item replace entity @s inventory.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}

item replace entity @s inventory.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
item replace entity @s inventory.26 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
