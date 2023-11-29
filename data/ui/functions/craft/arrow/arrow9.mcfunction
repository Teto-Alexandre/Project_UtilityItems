#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:9},display:{Name:'{"text":"ダークプリズム","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"プレイヤーや盾を貫通し反射されない","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:10b,duration:2,show_particles:0b}],CustomPotionColor:0}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow9
advancement revoke @s only ui:craft/arrow/arrow9