#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:131004,display:{Name:'{"italic":false,"color":"light_purple","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・ネザー要塞の宝物"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_15"]}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:bag/5
advancement revoke @s only ui:craft/bag/5