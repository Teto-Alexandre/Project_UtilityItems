#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{display:{Name:'{"text":"魂回復薬","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"HP最大値を10%回復する","color":"gray","bold":false,"italic":false}']},HideFlags:33,custom_potion_effects:[{id:"luck",amplifier:18b,duration:200,show_particles:0b}],CustomPotionColor:12320761}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion2
advancement revoke @s only ui:craft/potion/potion2