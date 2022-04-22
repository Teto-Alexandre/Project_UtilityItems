#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:stray_spawn_egg{CustomModelData:131003,display:{Name:'{"italic":false,"color":"aqua","text":"隠れたレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・謎のレシピ"}]','[{"italic":false,"color":"gray","text":" ・不思議なレシピ"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_1"]}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:bag/recipe1
advancement revoke @s only ui:craft/bag/recipe1