#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:1},display:{Name:'{"text":"雷矢","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"着弾地点に雷を落とす","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:2b,duration:2,show_particles:0b}],CustomPotionColor:16776960}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow1
advancement revoke @s only ui:craft/arrow/arrow1