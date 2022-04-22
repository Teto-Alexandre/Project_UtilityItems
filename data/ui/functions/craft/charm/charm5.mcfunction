#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:feather{tmw:{charm:5},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-765852809,52776129,-1579149392,389516569],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:-4,Operation:0,UUID:[I;-293784526,854085378,-1515475491,1607349956],Slot:"offhand"}],HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"俊足の加護","color":"gold","italic":false}]',Lore:['[{"text":"素早く動き打たれ弱い","color":"yellow","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm5
advancement revoke @s only ui:craft/charm/charm5