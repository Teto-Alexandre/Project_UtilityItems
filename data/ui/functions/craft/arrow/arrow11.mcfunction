#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:11},display:{Name:'{"text":"隕石の矢","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"着弾地点に火球を落とす","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:32,custom_potion_effects:[{id:"luck",amplifier:16b,duration:2,show_particles:0b}],CustomPotionColor:13056000}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow11
advancement revoke @s only ui:craft/arrow/arrow11