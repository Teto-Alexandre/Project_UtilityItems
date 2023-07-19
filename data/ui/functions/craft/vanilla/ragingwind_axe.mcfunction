#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stone_axe{display:{Name:'{"text":"烈風の斧","color":"aqua","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:11,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:-0.625,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:0.2,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:vanilla/ragingwind_axe
advancement revoke @s only ui:craft/vanilla/ragingwind_axe