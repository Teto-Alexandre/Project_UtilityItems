#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:131005,display:{Name:'{"italic":false,"color":"green","text":"光輝のレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]','[{"italic":false,"color":"gray","text":" ・神秘のレシピ"}]','[{"italic":false,"color":"gray","text":" ・伝説のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_3"]}}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:bag/recipe3
advancement revoke @s only ui:craft/bag/recipe3