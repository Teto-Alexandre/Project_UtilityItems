#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'[{"text":"歓喜","color":"#CC0000","bold":true,"italic":false},{"text":"と","color":"#996600","bold":true,"italic":true},{"text":"狂乱","color":"#CCCCCC","bold":true,"italic":false},{"text":"の凬","color":"#996600","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:17,Amplifier:50b,Duration:600,ShowParticles:0b},{Id:20,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:10053120}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:misc/pot2
advancement revoke @s only ui:craft/misc/pot2