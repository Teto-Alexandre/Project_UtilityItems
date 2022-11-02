#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26,Amplifier:12b,Duration:1}],CustomPotionColor:11776947,display:{Name:'{"italic":false,"color":"gold","text":"爆塵のポーション"}',Lore:['[{"text":"着弾地点が爆発する 取扱注意！","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:potion/potion13
advancement revoke @s only ui:craft/potion/potion13