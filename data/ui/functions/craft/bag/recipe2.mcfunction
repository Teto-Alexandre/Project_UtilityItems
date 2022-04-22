#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:131004,display:{Name:'{"italic":false,"color":"light_purple","text":"秘めたレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・不思議なレシピ"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]','[{"italic":false,"color":"gray","text":" ・神秘のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_2"]}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:bag/recipe2
advancement revoke @s only ui:craft/bag/recipe2