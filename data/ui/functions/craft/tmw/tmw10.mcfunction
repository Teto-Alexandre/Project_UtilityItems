#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:golden_hoe{tmw:{is:1,id:10,type:1,enableQ:1,enableF:1},Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"トルニクス・アンカー","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"移動用のアンカーを設置する","color":"gray","italic":false}]','[{"text":"アンカーは時間経過で砕ける","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw10
advancement revoke @s only ui:craft/tmw/tmw10