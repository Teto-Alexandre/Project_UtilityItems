#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s firework_star{tmw:{charm:14,id:213},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"奈落の加護","color":"gold","italic":false}]',Lore:['[{"text":"奈落に落ちた時周辺のブロックに復帰","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"奈落軽減","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm14
advancement revoke @s only ui:craft/charm/charm14