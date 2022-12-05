#使用時分岐
    data merge storage ui:common {input:{Mode:"generate",Size:1,Bomb:1,Life:1,AI:0}}
    execute store result storage ui:common input.Size int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Size
    execute store result storage ui:common input.Bomb int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Bomb
    execute store result storage ui:common input.Life int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.Life
    execute store result storage ui:common input.AI int 1 run data get entity @s SelectedItem.tag.tmw.mine_square.AI
    function ui:common/mine_square
    playsound block.note_block.hat player @a ~ ~ ~ 1 1 0

#
    execute if entity @e[tag=ui_common_mine_square,distance=..15] run scoreboard players set @s ui_ct 100
    execute if entity @e[tag=ui_common_mine_square,distance=..15] run item replace entity @s weapon.mainhand with air