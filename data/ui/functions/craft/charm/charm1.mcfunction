#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:gold_nugget{tmw:{charm:1,id:-3,amount:3},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'{"text":"障壁の加護","italic":false,"color":"gold"}',Lore:['[{"text":"10秒のクールタイムの後1回復する","color":"yellow","italic":false}]','[{"text":"障壁がある間は全ての攻撃を無効化する","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"魔導障壁 +3","color":"blue","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm1
advancement revoke @s only ui:craft/charm/charm1