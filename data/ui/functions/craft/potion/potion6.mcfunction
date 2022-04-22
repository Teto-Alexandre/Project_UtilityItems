#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'{"text":"瓶詰めの超重力","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者は超重力に囚われる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:4b,Duration:200,ShowParticles:0b}],CustomPotionColor:255}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion6
advancement revoke @s only ui:craft/potion/potion6