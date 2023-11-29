#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:4},display:{Name:'{"text":"暴食の矢","color":"gold","bold":true,"italic":false}',Lore:['{"text":"犠牲者はとてもおなかをすかせる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:5b,duration:2,show_particles:0b}],CustomPotionColor:16750848}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow4
advancement revoke @s only ui:craft/arrow/arrow4