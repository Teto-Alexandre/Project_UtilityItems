#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s lime_dye{tmw:{charm:16,id:215},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"跳躍の加護","color":"gold","italic":false}]',Lore:['[{"text":"空中スニークで追加ジャンプ","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"二段ジャンプ","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm16
advancement revoke @s only ui:craft/charm/charm16