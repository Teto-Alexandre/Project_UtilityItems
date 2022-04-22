#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'[{"text":"嫉妬","color":"#660099","bold":true,"italic":false},{"text":"と","color":"#007700","bold":true,"italic":true},{"text":"悪意","color":"#663333","bold":true,"italic":false},{"text":"の凬","color":"#007700","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:19b,Amplifier:4b,Duration:600,ShowParticles:0b},{Id:27b,Amplifier:4b,Duration:600,ShowParticles:0b}],CustomPotionColor:30464}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:misc/pot1
advancement revoke @s only ui:craft/misc/pot1