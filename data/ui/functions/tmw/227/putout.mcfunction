# 取り出し
    data modify storage ui:temp tag set from entity @s SelectedItem.tag

# アイテム召喚
    execute store result score $temp ui_temp run data get storage ui:temp tag.tmw.amount 1
    function ui:tmw/227/orb

# 個数減らす
    data modify storage ui:temp tag.tmw.amount set value 0
    item modify entity @s weapon.mainhand ui:tempout
    function ui:tmw/227/calc
    item modify entity @s weapon.mainhand ui:tmw227
    item modify entity @s weapon.mainhand ui:ubreak.set

# お片付け
    playsound minecraft:block.grindstone.use player @a ~ ~ ~ 1 1.5 0
