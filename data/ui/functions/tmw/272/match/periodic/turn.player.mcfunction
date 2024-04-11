playsound block.note_block.hat player @s ~ ~ ~ 1 1.5 0

function oh_my_dat:please
function ui:tmw/272/match/periodic/turn_name

execute unless score @s ui_tmw272_mana_max >= @s ui_tmw272_mana_up run scoreboard players add @s ui_tmw272_mana_max 1
execute if score @s ui_tmw272_mana matches 1.. if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players set @s ui_tmw272_mana 0
execute if score @s ui_tmw272_mana < @s ui_tmw272_mana_max run scoreboard players operation @s ui_tmw272_mana += @s ui_tmw272_mana_max
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"> ","color":"green"},{"text":"最大コスト+1 = "},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":", コストを最大まで回復しました"}]

execute if score @e[tag=tmw272_active_match,limit=1] ui_tmw272_match_round matches 2.. run function ui:tmw/272/common/draw/once

# 開幕：永続n回復
execute unless score @s ui_tmw272_blessing matches 0 run function ui:tmw/272/match/periodic/state/blessing
# 開幕：永続nダメージ
execute unless score @s ui_tmw272_curse matches 0 run function ui:tmw/272/match/periodic/state/curse
# 常在：ドロー枚数がn減る、発動時減る、開幕1減る
execute if score @s ui_tmw272_slowness matches 1.. run function ui:tmw/272/match/periodic/state/slowness
# 開幕：永続nダメージ、回復でこの値だけ減少
execute if score @s ui_tmw272_hunger matches 1.. run function ui:tmw/272/match/periodic/state/hunger
# 開幕：nダメージ、2/3になる
execute if score @s ui_tmw272_burn matches 1.. run function ui:tmw/272/match/periodic/state/burn
# 開幕：1ドロー、1減る
execute if score @s ui_tmw272_speed matches 1.. run function ui:tmw/272/match/periodic/state/speed
# 攻撃時：varが増減、消える
execute unless score @s ui_tmw272_strength matches 0 run function ui:tmw/272/match/periodic/state/strength
# 開幕：体力の5%ダメージ、1減る
execute if score @s ui_tmw272_poison matches 1.. run function ui:tmw/272/match/periodic/state/poison
# 常在：標敵にならなくなる（VE干渉）、開幕1減る
execute if score @s ui_tmw272_invisible matches 1.. run function ui:tmw/272/match/periodic/state/invisible
# 開幕：n回復、1減る
execute if score @s ui_tmw272_regeneration matches 1.. run function ui:tmw/272/match/periodic/state/regeneration
# 開幕：nダメージ、1減る
execute if score @s ui_tmw272_harm matches 1.. run function ui:tmw/272/match/periodic/state/harm
# 常在：ランダム値で常に最低値が出る、開幕1減る
execute if score @s ui_tmw272_unluck matches 1.. run function ui:tmw/272/match/periodic/state/unluck
# 開幕：次のマナn減少、消える
execute if score @s ui_tmw272_darkness matches 1.. run function ui:tmw/272/match/periodic/state/darkness
# 開幕：シールドn、1減る
execute if score @s ui_tmw272_resistance matches 1.. run function ui:tmw/272/match/periodic/state/resistance
# 開幕：燃焼を無効化、1減る
execute if score @s ui_tmw272_fire_resistance matches 1.. run function ui:tmw/272/match/periodic/state/fire_resistance
# 常在：ランダムの対象にならない、開幕1減る
execute if score @s ui_tmw272_flying matches 1.. run function ui:tmw/272/match/periodic/state/flying
# 変数 ui_tmw272_trade ターン終了時、「取引に応じる」の状況リセット
execute if score @s ui_tmw272_trade matches 1.. run function ui:tmw/272/match/periodic/state/trade
# 常在：標敵を取る攻撃がランダム敵一体に変わる、開幕1減る
execute if score @s ui_tmw272_nausea matches 1.. run function ui:tmw/272/match/periodic/state/nausea
# 常在：カードを使うとnダメージ、発動で2/3、開幕消滅
execute if score @s ui_tmw272_bleed matches 1.. run function ui:tmw/272/match/periodic/state/bleed
# 常在：敵全体対象が標敵に、全員対象が自分と標敵に変わる、開幕1減る
execute if score @s ui_tmw272_blindness matches 1.. run function ui:tmw/272/match/periodic/state/blindness
# 常在：透明化していてもロックできるようになる、開幕1減る
execute if score @s ui_tmw272_glowing matches 1.. run function ui:tmw/272/match/periodic/state/glowing
# 常在：ランダム値で常に最高値が出る、開幕1減る
execute if score @s ui_tmw272_luck matches 1.. run function ui:tmw/272/match/periodic/state/luck
# 開幕：体力の5%+nダメージ、1減る
execute if score @s ui_tmw272_wither matches 1.. run function ui:tmw/272/match/periodic/state/wither
# 被攻撃時：varが増減、消える
execute unless score @s ui_tmw272_armor matches 0 run function ui:tmw/272/match/periodic/state/armor
# 常在：カードのコストがN上昇する、開幕消える
execute unless score @s ui_tmw272_seal matches 0 run function ui:tmw/272/match/periodic/state/seal
# 常在：ダメージのeffect_typeのターゲットになったとき対象から外れる、開幕1減る
execute unless score @s ui_tmw272_invulnerable matches 0 run function ui:tmw/272/match/periodic/state/invulnerable
# 常在：カードが使えなくなる、開幕1減る
execute if score @s ui_tmw272_stun matches 1.. run function ui:tmw/272/match/periodic/state/stun
# 開幕：1ダメージ、1減る
execute if score @s ui_tmw272_freeze matches 1.. run function ui:tmw/272/match/periodic/state/freeze
# 開幕：体力が最大体力のN%減る
execute if score @s ui_tmw272_soul_break matches 1.. run function ui:tmw/272/match/periodic/state/soul_break
# 常在：カードを使うとnダメージ、開幕でNダメージと1/2
execute if score @s ui_tmw272_fairy matches 1.. run function ui:tmw/272/match/periodic/state/fairy
# 常在：カード使うと1増加 閉幕リセット
execute if score @s ui_tmw272_chain matches 1.. run function ui:tmw/272/match/periodic/state/chain
# 回復時：varが増減、消える
execute unless score @s ui_tmw272_hope matches 0 run function ui:tmw/272/match/periodic/state/hope
# 開幕：N%の確率で死ぬ
execute if score @s ui_tmw272_karma matches 1.. run function ui:tmw/272/match/periodic/state/karma
# 常在：modify_valueを受けない、開幕1減る
execute if score @s ui_tmw272_hexproof matches 1.. run function ui:tmw/272/match/periodic/state/hexproof
# 常在：modify_valueを受けない、開幕1減る
execute if score @s ui_tmw272_confusion matches 1.. run function ui:tmw/272/match/periodic/state/confusion
# 常在：modify_valueを受けない、開幕1減る
execute if score @s ui_tmw272_dazzle matches 1.. run function ui:tmw/272/match/periodic/state/dazzle
# 開幕：マナを増やす
execute if score @s ui_tmw272_soul matches 1.. run function ui:tmw/272/match/periodic/state/soul
# 常時：ドロー時にNダメージ、1減少
execute if score @s ui_tmw272_restraint matches 1.. run function ui:tmw/272/match/periodic/state/restraint
# 閉幕：4減少、減った半分回復
execute if score @s ui_tmw272_saturation matches 1.. run function ui:tmw/272/match/periodic/state/saturation
# 被攻撃時：相手の体力を減らす、消える
execute unless score @s ui_tmw272_thorn matches 0 run function ui:tmw/272/match/periodic/state/thorn

scoreboard players set $success ui_temp 0
execute unless score @s ui_tmw272_shield matches 0 run scoreboard players set $success ui_temp 1
execute unless score @s ui_tmw272_shield_next matches 0 run scoreboard players set $success ui_temp 1
execute if score $success ui_temp matches 1 run function ui:tmw/272/match/periodic/state/shield

scoreboard players set $success ui_temp 0
execute unless score @s ui_tmw272_dodge matches 0 run scoreboard players set $success ui_temp 1
execute unless score @s ui_tmw272_dodge_next matches 0 run scoreboard players set $success ui_temp 1
execute if score $success ui_temp matches 1 run function ui:tmw/272/match/periodic/state/dodge