#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s ghast_tear{tmw:{charm:10,id:209},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"解毒の加護","color":"gold","italic":false}]',Lore:['[{"text":"毒・ウィザーを自動的に解除する","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"毒無効","color":"green","italic":false}]','[{"text":"ウィザー無効","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm10
advancement revoke @s only ui:craft/charm/charm10