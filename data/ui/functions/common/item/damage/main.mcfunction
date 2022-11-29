#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# 耐久値の種別を判定
    execute store success score $air_check ui_temp if data storage ui:common input.Item{id:"minecraft:air"}
    execute store result score $common1 ui_temp run data get storage ui:common input.Item.tag.Unbreakable
    execute store result score $common2 ui_temp run data get storage ui:common input.Item.tag.tmw.enableDurability

#
    execute if score $air_check ui_temp matches 0 if score $common1 ui_temp matches 0 run function ui:common/item/damage/unbreaking

# calc
    execute unless score $num ui_temp matches 0 if score $air_check ui_temp matches 0 if score $common1 ui_temp matches 0 if score $common2 ui_temp matches 0 run function ui:common/item/damage/normal
    execute unless score $num ui_temp matches 0 if score $air_check ui_temp matches 0 if score $common1 ui_temp matches 0 unless score $common2 ui_temp matches 0 run function ui:common/item/damage/ui_durability
