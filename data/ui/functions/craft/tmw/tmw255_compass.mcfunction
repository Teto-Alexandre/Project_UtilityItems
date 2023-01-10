#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
loot give @s loot ui:single_item/tmw/255/moderated/player_compass
function ui:craft/common/exp/advancement
advancement grant @s only ui:main/other/player_compass

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw255_compass
advancement revoke @s only ui:craft/tmw/tmw255_compass