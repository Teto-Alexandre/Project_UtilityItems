#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s gunpowder{tmw:{charm:15,id:214},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"反射の加護","color":"gold","italic":false}]',Lore:['[{"text":"飛び道具を反射する","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"飛び道具反射","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm15
advancement revoke @s only ui:craft/charm/charm15