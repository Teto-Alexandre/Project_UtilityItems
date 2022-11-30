#使用時分岐
    data merge storage ui:common {input:{Mode:"generate",Size:1,Bomb:1,Life:1}}
    execute store result storage ui:common input.Size int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Size
    execute store result storage ui:common input.Bomb int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Bomb
    execute store result storage ui:common input.Life int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Life
    function ui:common/mine_square