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


# パーツポイント読み取り
function ui:tmw/501/19/functions/inventory/point/

# 成功かどうか
execute if score $Return ui_temp matches 1 run item replace entity @s hotbar.4 with minecraft:emerald
execute if score $Return ui_temp matches 1 run item modify entity @s hotbar.4 ui:tmw501_19/point_plus
execute if score $Return ui_temp matches 0 run item replace entity @s hotbar.4 with minecraft:red_stained_glass_pane
execute if score $Return ui_temp matches 0 run item modify entity @s hotbar.4 ui:tmw501_19/point_over

execute if score $Return ui_temp matches 0 run title @s title [{"text":"※ポイントオーバーしています※","color":"red"}]
execute if score $Return ui_temp matches 0 run title @s times 5 10 5