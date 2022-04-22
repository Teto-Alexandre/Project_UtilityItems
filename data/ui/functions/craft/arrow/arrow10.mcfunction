#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:10},display:{Name:'{"text":"TNTの矢","color":"red","bold":true,"italic":false}',Lore:['{"text":"TNTを投射する","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],CustomPotionEffects:[{Id:26b,Amplifier:15b,Duration:2,ShowParticles:0b}],CustomPotionColor:16711680}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow10
advancement revoke @s only ui:craft/arrow/arrow10