#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:red_dye{tmw:{charm:6},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.2,Operation:1,UUID:[I;-765852809,52776129,-1579149392,389516569],Slot:"offhand"}],HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"強靭の加護","color":"gold","italic":false}]',Lore:['[{"text":"打たれ強くなる","color":"yellow","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm6
advancement revoke @s only ui:craft/charm/charm6