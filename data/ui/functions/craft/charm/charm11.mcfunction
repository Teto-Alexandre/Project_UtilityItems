#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s lapis_lazuli{tmw:{charm:11,id:210},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"水棲の加護","color":"gold","italic":false}]',Lore:['[{"text":"常時水中呼吸を得る","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"水中呼吸","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm11
advancement revoke @s only ui:craft/charm/charm11