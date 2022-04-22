#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'{"text":"瓶詰めの呪い","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者のHP最大値を半減させる","color":"gray","italic":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:8b,Duration:200,ShowParticles:0b}],CustomPotionColor:13369548}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion8
advancement revoke @s only ui:craft/potion/potion8