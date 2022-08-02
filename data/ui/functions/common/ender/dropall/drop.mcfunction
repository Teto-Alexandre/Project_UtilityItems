#ドロップする

# 触媒の召喚
    execute store result score $temp ui_temp run data get storage ui:common temp[0].tag.ui.ismenu
    execute if score $temp ui_temp matches 0 run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["ui_temp_item"]}
    execute if score $temp ui_temp matches 0 run data modify entity @e[tag=ui_temp_item,limit=1] Item set from storage ui:common temp[0]

# タグ消し
    execute if score $temp ui_temp matches 0 run tag @e[tag=ui_temp_item] remove ui_temp_item

# データ消し
    data remove storage ui:common temp[0]

# からっぽじゃないならさらにアイテムをドロップさせる
    execute if data storage ui:common temp[0].id run function ui:common/ender/dropall/drop