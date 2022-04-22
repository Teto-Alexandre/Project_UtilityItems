#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:prismarine_shard{tmw:{charm:4},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:1,UUID:[I;-765852809,52776129,-1579149392,389516569],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.75,Operation:1,UUID:[I;-293784526,854085378,-1515475491,1607349956],Slot:"offhand"}],HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"一閃の加護","color":"gold","italic":false}]',Lore:['[{"text":"一撃の破壊力を高める","color":"yellow","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm4
advancement revoke @s only ui:craft/charm/charm4