#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:phantom_spawn_egg{tmw:{egg:6},display:{Name:'{"text":"スカイブロックメーカー","italic":false,"color":"aqua"}',Lore:['[{"text":"Y=200にブロックを配置し頂点に立つ","color":"yellow","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_6"]}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:egg/egg6
advancement revoke @s only ui:craft/egg/egg6