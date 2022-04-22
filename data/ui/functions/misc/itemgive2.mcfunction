#=======================================================================================================

give @p minecraft:blaze_rod{tmw:{is:1,id:101,type:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁の翼","color":"gold","italic":false,"bold":true}]'}}

give @p minecraft:golden_hoe{tmw:{is:1,id:10,type:1,enableQ:1,enableF:1},Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:7,display:{Name:'[{"text":"トルニクス・アンカー","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"移動用のアンカーを設置する","color":"gray","italic":false}]','[{"text":"アンカーは時間経過で砕ける","color":"gray","italic":false}]']}}

give @p potion{display:{Name:'{"text":"魂再生薬","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"HP最大値減少を元に戻す","color":"gray","bold":false,"italic":false}','{"text":"副作用：なし","color":"gray","bold":false,"italic":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:11b,Duration:200,ShowParticles:0b}],CustomPotionColor:16777215} 1
give @p splash_potion{display:{Name:'{"text":"瓶詰めの超重力","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者は超重力に囚われる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:4b,Duration:200,ShowParticles:0b}],CustomPotionColor:255} 1
give @p splash_potion{display:{Name:'{"text":"暴食のポーション","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者はとてもおなかをすかせる","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:5b,Duration:200,ShowParticles:0b}],CustomPotionColor:16750848} 1
give @p splash_potion{display:{Name:'{"text":"瓶詰めの呪い","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"犠牲者のHP最大値を半減させる","color":"gray","italic":false}']},HideFlags:33,CustomPotionEffects:[{Id:26b,Amplifier:8b,Duration:200,ShowParticles:0b}],CustomPotionColor:13369548} 1

give @p minecraft:crossbow{tmw:{id:11,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"ポーションランチャー","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]']}}

give @p minecraft:splash_potion{HideFlags:32,CustomPotionEffects:[{Ambient:0b,ShowParticles:1b,Duration:500,Id:19b,Amplifier:0b}],CustomPotionColor:9881169,display:{Name:'{"italic":false,"color":"green","text":"毒のポーション"}',Lore:['[{"text":"毒による持続ダメージを与える","color":"gray","italic":false}]']}}
give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:60,Id:2b,Amplifier:10b},{Ambient:0b,ShowParticles:0b,Duration:500,Id:2b,Amplifier:1b}],CustomPotionColor:54656,display:{Name:'{"italic":false,"color":"green","text":"粘着のポーション"}',Lore:['[{"text":"粘着液を散布し移動を阻害する","color":"gray","italic":false}]']}}
give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:60,Id:2b,Amplifier:10b},{Ambient:0b,ShowParticles:0b,Duration:450,Id:2b,Amplifier:1b},{Ambient:0b,ShowParticles:1b,Duration:450,Id:19b,Amplifier:0b}],CustomPotionColor:6608256,display:{Name:'{"italic":false,"color":"dark_green","text":"毒粘着のポーション"}',Lore:['[{"text":"毒性の高い粘着液を散布する","color":"gray","italic":false}]']}}

give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26b,Amplifier:2b,Duration:1}],CustomPotionColor:16776960,display:{Name:'{"italic":false,"color":"yellow","text":"誘雷のポーション"}',Lore:['[{"text":"着弾地点に雷が落ちる 取扱注意！","color":"gray","italic":false}]']}}
give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26b,Amplifier:12b,Duration:1}],CustomPotionColor:11776947,display:{Name:'{"italic":false,"color":"gold","text":"爆塵のポーション"}',Lore:['[{"text":"着弾地点が爆発する 取扱注意！","color":"gray","italic":false}]']}}
give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26b,Amplifier:13b,Duration:1}],CustomPotionColor:11075583,display:{Name:'{"italic":false,"color":"aqua","text":"氷結のポーション"}',Lore:['[{"text":"着弾地点が凍る 取扱注意！","color":"gray","italic":false}]']}}

give @p minecraft:crossbow{tmw:{id:11,type:2,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"希望と幻想の薬弾砲","color":"#99ff99","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填状態でQを押すと排出","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]','[{"text":"無尽蔵に複製される弾丸が尽きることはない","color":"red","italic":false}]']}}

give @p potion{display:{Name:'[{"text":"瓶詰めの","color":"aqua","italic":true},{"text":"天の怒り","color":"yellow","bold":true,"italic":false}]',Lore:['{"text":"ダメージを受けるが、","color":"gray","italic":false}','{"text":"短時間身体能力が大幅に上がる","color":"gray","italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:1b,Amplifier:5b,Duration:300,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:8b,Amplifier:3b,Duration:300,ShowParticles:0b},{Id:20b,Amplifier:1b,Duration:20,ShowParticles:0b}],CustomPotionColor:16776960} 1

give @p splash_potion{display:{Name:'[{"text":"歓喜","color":"#CC0000","bold":true,"italic":false},{"text":"と","color":"#996600","bold":true,"italic":true},{"text":"狂乱","color":"#CCCCCC","bold":true,"italic":false},{"text":"の凬","color":"#996600","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:17b,Amplifier:50b,Duration:600,ShowParticles:0b},{Id:20b,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:10053120} 1
give @p splash_potion{display:{Name:'[{"text":"悲哀","color":"#0000CC","bold":true,"italic":false},{"text":"と","color":"#990099","bold":true,"italic":true},{"text":"絶望","color":"#999999","bold":true,"italic":false},{"text":"の凬","color":"#990099","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:600,ShowParticles:0b},{Id:24b,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:10027161} 1
give @p splash_potion{display:{Name:'[{"text":"懺悔","color":"#006666","bold":true,"italic":false},{"text":"と","color":"#777700","bold":true,"italic":true},{"text":"怠惰","color":"#009900","bold":true,"italic":false},{"text":"の凬","color":"#777700","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:2b,Amplifier:5b,Duration:600,ShowParticles:0b},{Id:4b,Amplifier:5b,Duration:600,ShowParticles:0b},{Id:18b,Amplifier:5b,Duration:600,ShowParticles:0b}],CustomPotionColor:7829248} 1
give @p splash_potion{display:{Name:'[{"text":"嫉妬","color":"#660099","bold":true,"italic":false},{"text":"と","color":"#007700","bold":true,"italic":true},{"text":"悪意","color":"#663333","bold":true,"italic":false},{"text":"の凬","color":"#007700","bold":true,"italic":true}]'},HideFlags:32,CustomPotionEffects:[{Id:19b,Amplifier:4b,Duration:600,ShowParticles:0b},{Id:27b,Amplifier:4b,Duration:600,ShowParticles:0b}],CustomPotionColor:30464} 1

give @p minecraft:dragon_breath{tmw:{id:12,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"即席龍素注入ボトル","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションに使用","color":"gray","italic":false}]','[{"text":"ポーションを残留タイプに変える","color":"gray","italic":false}]']}}

give @p minecraft:lingering_potion{HideFlags:32,CustomPotionEffects:[{Id:26b,Amplifier:14b,Duration:1}],CustomPotionColor:16777215,display:{Name:'{"italic":false,"color":"white","text":"衝撃のポーション"}',Lore:['[{"text":"着弾地点に衝撃を起こす","color":"gray","italic":false}]']}}

give @p minecraft:zoglin_spawn_egg{tmw:{egg:5},display:{Name:'{"text":"NovaFurnace","italic":false,"color":"green"}',Lore:['[{"text":"超エネルギー＋高速精錬！","color":"gray","italic":false}]','[{"text":"ごく稀に爆発することがあります","color":"gray","italic":false}]','[{"text":" - Nova Corporation -","color":"dark_purple","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg","ui_5"]}} 1

#=======================================================================================================
