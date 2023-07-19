#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:golden_sword{display:{Name:'{"text":"はやぶさの剣","color":"aqua","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:6,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:8,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:0.1,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:vanilla/hayabusas_sword
advancement revoke @s only ui:craft/vanilla/hayabusas_sword