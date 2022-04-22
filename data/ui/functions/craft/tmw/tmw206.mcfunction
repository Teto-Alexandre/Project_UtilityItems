#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:iron_hoe{tmw:{id:206},display:{Name:'[{"text":"メカニカルサイス","color":"aqua","italic":false}]'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw206
advancement revoke @s only ui:craft/tmw/tmw206