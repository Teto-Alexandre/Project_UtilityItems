#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s orange_dye{tmw:{charm:12,id:211},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"耐火の加護","color":"gold","italic":false}]',Lore:['[{"text":"常時火炎耐性を得る","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"火炎耐性","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm12
advancement revoke @s only ui:craft/charm/charm12