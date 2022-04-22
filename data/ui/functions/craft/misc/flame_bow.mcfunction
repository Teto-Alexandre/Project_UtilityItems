#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s bow{display:{Name:'{"italic":false,"color":"aqua","text":"炎の弓"}'},Enchantments:[{id:"flame",lvl:1s}],HideFlags:1}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:misc/flame_bow
advancement revoke @s only ui:craft/misc/flame_bow