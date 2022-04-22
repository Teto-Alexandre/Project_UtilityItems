#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s white_dye{tmw:{charm:13,id:212},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"空力の加護","color":"gold","italic":false}]',Lore:['[{"text":"高いところからの落下を無効化する","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"落下耐性","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm13
advancement revoke @s only ui:craft/charm/charm13