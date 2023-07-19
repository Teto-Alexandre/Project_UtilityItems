#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:golden_axe{display:{Name:'{"text":"純金の斧","color":"white","italic":false}',Lore:['[{"text":"威力は高いが重い","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:12,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:-0.75,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:-0.2,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier1

#レシピおよび進捗消去
recipe take @s ui:vanilla/puregold_axe
advancement revoke @s only ui:craft/vanilla/puregold_axe