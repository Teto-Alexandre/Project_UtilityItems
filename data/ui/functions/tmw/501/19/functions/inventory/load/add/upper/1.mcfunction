##汎用性が最も高いアイテム持ち込み拡張

# Item:{id:"minecraft:cobblestone",Count:1b}
    data merge storage ui:common {input:{Mode:"give",Num:1}}
    data modify storage ui:common input.Num set from storage ui:rob temp.Front.num
    data modify storage ui:common input.Item set from storage ui:rob temp.Front.item
    data merge storage ui:common {input:{Item:{Count:1b}}}
    function ui:common/item
    #say @e[type=item]
