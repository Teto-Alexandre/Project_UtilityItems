#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'{"text":"暴食のポーション","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者はとてもおなかをすかせる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,custom_potion_effects:[{id:"minecraft:luck",amplifier:5b,duration:200,show_particles:0b}],CustomPotionColor:16750848}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion7
advancement revoke @s only ui:craft/potion/potion7