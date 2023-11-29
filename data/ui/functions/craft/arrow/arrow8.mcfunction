#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:8},display:{Name:'{"text":"火矢","color":"white","bold":false,"italic":false}',Lore:['{"text":"炎上 (0:05)","color":"red","italic":false}']},HideFlags:33,custom_potion_effects:[{id:"luck",amplifier:9b,duration:2,show_particles:0b}],CustomPotionColor:16711680} 1
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow8
advancement revoke @s only ui:craft/arrow/arrow8