#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:12},display:{Name:'{"text":"エンダーアロー","color":"#22AA88","bold":true,"italic":false}',Lore:['{"text":"着弾地点までテレポートする","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:32,custom_potion_effects:[{id:"luck",amplifier:17b,duration:2,show_particles:0b}],CustomPotionColor:3722375}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow12
advancement revoke @s only ui:craft/arrow/arrow12