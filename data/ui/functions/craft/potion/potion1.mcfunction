#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s potion{display:{Name:'[{"text":"瓶詰めの","color":"aqua","italic":true},{"text":"天の怒り","color":"yellow","bold":true,"italic":false}]',Lore:['{"text":"ダメージを受けるが、","color":"gray","italic":false}','{"text":"短時間身体能力が大幅に上がる","color":"gray","italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:1,Amplifier:5b,Duration:300,ShowParticles:0b},{Id:7,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:8,Amplifier:3b,Duration:300,ShowParticles:0b},{Id:20,Amplifier:1b,Duration:20,ShowParticles:0b}],CustomPotionColor:16776960}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion1
advancement revoke @s only ui:craft/potion/potion1