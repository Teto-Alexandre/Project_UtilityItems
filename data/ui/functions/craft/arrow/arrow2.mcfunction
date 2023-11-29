#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:2},display:{Name:'{"text":"花火の矢","color":"red","bold":true,"italic":false}',Lore:['{"text":"着弾地点で花火と化す","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:3b,duration:2,show_particles:0b}],CustomPotionColor:11534336}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow2
advancement revoke @s only ui:craft/arrow/arrow2