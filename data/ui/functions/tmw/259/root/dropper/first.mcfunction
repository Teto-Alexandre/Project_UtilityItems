# ドロッパーの上に来たらスキルノードを作成

#
    scoreboard players set $nodetype ui_temp 0
    data modify storage ui:temp temp set from block ~ ~-0.5 ~ Items
    data modify storage ui:temp temp2 set from storage ui:temp temp[0]
    execute store result score $point ui_temp run data get storage ui:temp temp2.Count 1
    execute if data storage ui:temp temp2{id:"minecraft:iron_block"} run scoreboard players set $nodetype ui_temp 1
    data remove storage ui:temp temp[0]
    data remove storage ui:temp temp2

#
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches ..0 run setblock ~ ~5 ~ light_gray_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 1 run setblock ~ ~5 ~ white_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 2 run setblock ~ ~5 ~ pink_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 3 run setblock ~ ~5 ~ red_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 4 run setblock ~ ~5 ~ orange_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 5 run setblock ~ ~5 ~ yellow_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 6 run setblock ~ ~5 ~ lime_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 7 run setblock ~ ~5 ~ cyan_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 8 run setblock ~ ~5 ~ blue_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 9 run setblock ~ ~5 ~ purple_wool
    execute if score $nodetype ui_temp matches 0 if score $point ui_temp matches 10.. run setblock ~ ~5 ~ black_wool
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches ..0 run setblock ~ ~5 ~ light_gray_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 1 run setblock ~ ~5 ~ white_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 2 run setblock ~ ~5 ~ pink_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 3 run setblock ~ ~5 ~ red_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 4 run setblock ~ ~5 ~ orange_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 5 run setblock ~ ~5 ~ yellow_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 6 run setblock ~ ~5 ~ lime_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 7 run setblock ~ ~5 ~ cyan_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 8 run setblock ~ ~5 ~ blue_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 9 run setblock ~ ~5 ~ purple_terracotta
    execute if score $nodetype ui_temp matches 1 if score $point ui_temp matches 10.. run setblock ~ ~5 ~ black_terracotta
    setblock ~1 ~5 ~ stone_button[face=wall,facing=east]
    setblock ~-1 ~5 ~ stone_button[face=wall,facing=west]
    setblock ~ ~5 ~1 stone_button[face=wall,facing=south]
    setblock ~ ~5 ~-1 stone_button[face=wall,facing=north]
    setblock ~ ~4 ~ minecraft:command_block[facing=down]{Command:"execute positioned ~ ~-4.5 ~ run data modify storage ui:skill temp set from entity @e[tag=tmw_259_node,sort=nearest,limit=1] ArmorItems[0].tag.tmw.skilltree",auto:0b,conditionMet:0b,powered:0b}
    setblock ~ ~3 ~ minecraft:chain_command_block[facing=down]{Command:"execute positioned ~ ~2 ~ as @p run function ui:common/skilltree",auto:1b,conditionMet:0b,powered:0b}
    summon glow_item_frame ~ ~6 ~ {Facing:1b,Invulnerable:1b,Tags:["tmw_259","tmw_259_node_icon"]}

#
    data modify entity @e[tag=tmw_259_node_icon,sort=nearest,limit=1] Item set from storage ui:temp temp[0]

#
    execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {ArmorItems:[{id:"acacia_boat",Count:1b,tag:{tmw:{skilltree:{Mode:"get",id:101,point:1,needtotal:0,need:[],nodetype:0,cant:[]}}}},{},{},{}],Tags:["tmw_259","tmw_259_node","ui_temp_unpower"]}

#
    execute store result entity @e[tag=ui_temp_unpower,limit=1] ArmorItems[0].tag.tmw.skilltree.id int 1 run scoreboard players operation @e[tag=ui_temp_unpower] ui_obj_id = $obj_id ui_temp
    execute store result entity @e[tag=ui_temp_unpower,limit=1] ArmorItems[0].tag.tmw.skilltree.point int 1 run scoreboard players get $point ui_temp
    execute if score $nodetype ui_temp matches 1 store result entity @e[tag=ui_temp_unpower,limit=1] ArmorItems[0].tag.tmw.skilltree.nodetype int 1 run scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    #execute if score $nodetype ui_temp matches 1 run say 削除タイプノード


#
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower

#
    data remove storage ui:temp temp

#
    scoreboard players set $node.check ui_temp 1
