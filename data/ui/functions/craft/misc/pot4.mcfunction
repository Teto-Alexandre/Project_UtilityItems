#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s splash_potion{display:{Name:'[{"text":"懺悔","color":"#006666","bold":true,"italic":false},{"text":"と","color":"#777700","bold":true,"italic":true},{"text":"怠惰","color":"#009900","bold":true,"italic":false},{"text":"の凬","color":"#777700","bold":true,"italic":true}]'},HideFlags:32,custom_potion_effects:[{id:"minecraft:slowness",amplifier:5b,duration:600,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:5b,duration:600,show_particles:0b},{id:"minecraft:weakness",amplifier:5b,duration:600,show_particles:0b}],CustomPotionColor:7829248}
function ui:craft/common/exp/tier4

#レシピおよび進捗消去
recipe take @s ui:misc/pot4
advancement revoke @s only ui:craft/misc/pot4