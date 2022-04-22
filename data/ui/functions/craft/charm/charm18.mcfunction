#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s purple_dye{tmw:{charm:18,id:217},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"逆エンダーマイトの加護","color":"gold","italic":false}]',Lore:['[{"text":"エンダーマンが近づかなくなる","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"逆エンダーマイト","color":"green","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:charm/charm18
advancement revoke @s only ui:craft/charm/charm18