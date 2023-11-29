#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:3},display:{Name:'{"text":"超重力の矢","color":"blue","bold":true,"italic":false}',Lore:['{"text":"犠牲者は超重力に囚われる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"luck",amplifier:4b,duration:2,show_particles:0b}],CustomPotionColor:255}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow3
advancement revoke @s only ui:craft/arrow/arrow3