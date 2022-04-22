# ドロップアイテムのenableタグ照合
    tag @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] add ui_temp_item
    execute store result score $temp ui_temp run data get entity @e[tag=ui_temp_item,limit=1] Item.tag.tmw.enableQ

# ドロップアイテムにアイテムidがあるならタグ付けとメインハンド再帰を行う
    execute if score $temp ui_temp matches 1 run function ui:misc/act/drop.recall
    tag @e[tag=ui_temp_item] remove ui_temp_item