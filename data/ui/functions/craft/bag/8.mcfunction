#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:131005,display:{Name:'{"italic":false,"color":"green","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・圧縮資源"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_18"]}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:bag/4
advancement revoke @s only ui:craft/bag/4