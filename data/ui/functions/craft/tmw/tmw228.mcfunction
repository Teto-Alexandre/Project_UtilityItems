#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:carrot_on_a_stick{tmw:{id:228},CustomModelData:110600,display:{Name:'[{"text":"Soulfire Sword","color":"gold","italic":false}]',Lore:['[{"text":" 魂まで灼けつくような炎の刃","color":"gray","italic":false}]','[{"text":" スケルトンにトドメを刺すと？","color":"gray","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1,1,1,2],Slot:"mainhand"}],HideFlags:6,Unbreakable:1b}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw228
advancement revoke @s only ui:craft/tmw/tmw228