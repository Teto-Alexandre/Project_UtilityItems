#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:bow{tmw:{id:207},display:{Name:'[{"text":"強化弓","color":"green","italic":false}]',Lore:['{"text":"放たれた矢を加速する","color":"gray","bold":false,"italic":false}']}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw207
advancement revoke @s only ui:craft/tmw/tmw207