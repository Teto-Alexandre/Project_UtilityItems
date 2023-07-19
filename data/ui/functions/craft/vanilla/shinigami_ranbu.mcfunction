#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @p minecraft:netherite_hoe{display:{Name:'{"text":"死神乱舞","color":"green","italic":false}',Lore:['{"text":"過ぎ去った後に立つ者なし","color":"gray","italic":false}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"atk",Amount:15,Operation:0,UUID:[I;3,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"hst",Amount:1,Operation:1,UUID:[I;3,1,1,2],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"spd",Amount:0,Operation:1,UUID:[I;3,1,1,3],Slot:"mainhand"}]} 1
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:vanilla/shinigami_ranbu
advancement revoke @s only ui:craft/vanilla/shinigami_ranbu