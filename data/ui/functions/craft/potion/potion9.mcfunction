#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26,Amplifier:14b,Duration:1}],CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","text":"衝撃のポーション"}',Lore:['[{"text":"着弾地点に衝撃を起こす","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion9
advancement revoke @s only ui:craft/potion/potion9