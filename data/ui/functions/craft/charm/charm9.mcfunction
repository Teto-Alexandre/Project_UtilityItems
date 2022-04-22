#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s blue_dye{tmw:{charm:9,id:208},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"船飛の加護","color":"gold","italic":false}]',Lore:['[{"text":"ボートを蹴り飛ばせる","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"ボート速度・攻撃力上昇","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm9
advancement revoke @s only ui:craft/charm/charm9