#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:7},display:{Name:'{"text":"ティルフィング","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"犠牲者のHP最大値を半減させる","color":"gray","italic":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:8b,duration:2,show_particles:0b}],CustomPotionColor:13369548}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow7
advancement revoke @s only ui:craft/arrow/arrow7