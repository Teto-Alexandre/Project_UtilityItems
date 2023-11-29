#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:5},display:{Name:'{"text":"滅撃の矢","color":"white","bold":true,"italic":false}',Lore:['{"text":"射撃ダメージ増加Ⅴの威力で放たれる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"luck",amplifier:6b,duration:2,show_particles:0b}],CustomPotionColor:16777215}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow5
advancement revoke @s only ui:craft/arrow/arrow5