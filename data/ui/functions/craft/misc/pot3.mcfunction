#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'[{"text":"悲哀","color":"#0000CC","bold":true,"italic":false},{"text":"と","color":"#990099","bold":true,"italic":true},{"text":"絶望","color":"#999999","bold":true,"italic":false},{"text":"の凬","color":"#990099","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:15,Amplifier:1b,Duration:600,ShowParticles:0b},{Id:24,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:10027161}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:misc/pot3
advancement revoke @s only ui:craft/misc/pot3