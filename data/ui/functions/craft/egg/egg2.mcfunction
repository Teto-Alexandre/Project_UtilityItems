#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:elder_guardian_spawn_egg{tmw:{egg:2},display:{Name:'{"text":"ラピュタエディター","italic":false,"color":"light_purple"}',Lore:['[{"text":"周囲5*5*5ブロックを","color":"yellow","italic":false}]','[{"text":"40m上空にクローンする","color":"yellow","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_2"]}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:egg/egg2
advancement revoke @s only ui:craft/egg/egg2