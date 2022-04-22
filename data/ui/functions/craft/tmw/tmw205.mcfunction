#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:golden_axe{tmw:{id:205},display:{Name:'[{"text":"チェストクラッシャー","color":"light_purple","italic":false}]',Lore:['{"text":"周囲のチェストを自動的に破壊する","color":"gray","bold":false,"italic":false}']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw205
advancement revoke @s only ui:craft/tmw/tmw205