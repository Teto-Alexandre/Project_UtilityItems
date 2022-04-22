#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s iron_nugget{tmw:{id:1003},CustomModelData:212001,display:{Name:'{"italic":false,"color":"aqua","text":"エーテリウムの欠片"}',Lore:['{"text":"エーテリウムの大気によって","color":"gray","italic":false}','{"text":"変質した金属の欠片","color":"gray","italic":false}','{"text":"素材としての利用価値がある","color":"gray","italic":false}']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:misc/etherium_shard
advancement revoke @s only ui:craft/misc/etherium_shard