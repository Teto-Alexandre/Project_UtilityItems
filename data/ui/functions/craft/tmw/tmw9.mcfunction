#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:iron_sword{Unbreakable:1b,tmw:{is:1,id:9,type:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"アルファエッジ[アサルトモード]","color":"#dddddd","italic":false,"bold":true}]',Lore:['[{"text":"Q:[共通]: モードチェンジ","color":"gray","italic":false}]','[{"text":"----- アサルト ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       時空湾曲","color":"light_purple","italic":false},{"text":"  敵の後ろから攻撃を加える","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 火砕砲撃","color":"red","italic":false},{"text":"  爆発する通常弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       飛翔","color":"green","italic":false},{"text":"      その場で飛び上がる","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       風力緩衝","color":"green","italic":false},{"text":"  緩やかに着地する","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 光子結界","color":"white","italic":false},{"text":"  短時間無敵化する","color":"gray","italic":false}]','[{"text":"----- ステート ---------------","color":"gray","italic":false}]','[{"text":"S+Q:","color":"gray","italic":false},{"text":"       閃光","color":"yellow","italic":false},{"text":"      前方にダメージのある突撃","color":"gray","italic":false}]','[{"text":"S+Q:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 電磁砲","color":"yellow","italic":false},{"text":"    壁を貫通する光線弾を撃つ","color":"gray","italic":false}]','[{"text":"   F:","color":"gray","italic":false},{"text":"       臨戦回復","color":"aqua","italic":false},{"text":"  代償を払い保護を得る","color":"gray","italic":false}]','[{"text":"S+F:","color":"gray","italic":false},{"text":"       崩壊波動","color":"aqua","italic":false},{"text":"  壊滅的な波動攻撃を行う","color":"gray","italic":false}]','[{"text":"S+F:[","color":"gray","italic":false},{"text":"5s","color":"green","italic":false},{"text":"]:","color":"gray","italic":false},{"text":" 邂逅","color":"white","italic":false},{"text":"      遠方の敵を引き寄せる","color":"gray","italic":false}]','[{"text":"---------------------------","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw9
advancement revoke @s only ui:craft/tmw/tmw9