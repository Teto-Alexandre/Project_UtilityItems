#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:iron_shovel{tmw:{id:203},display:{Name:'[{"text":"メカニカルシャベル","color":"aqua","italic":false}]'}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw203
advancement revoke @s only ui:craft/tmw/tmw203