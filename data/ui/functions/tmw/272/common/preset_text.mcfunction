data modify storage ui:tmw272_text simple_value set value {}

# フィードバック
data modify storage ui:tmw272_text simple_value.health_max set value {title:'[{"text":"【最大体力】","color":"red"}]',name:'[{"text":"体力","color":"red"}]',hover:'[{"text":"最も高かったタイミングの体力"},{"text":"\\n毎tick計測されている"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_health_max"}}]'}
data modify storage ui:tmw272_text simple_value.health set value {title:'[{"text":"【体力】","color":"red"}]',name:'[{"text":"体力","color":"red"}]',hover:'[{"text":"減ると戦線離脱する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_health"}}]'}
data modify storage ui:tmw272_text simple_value.damage set value {title:'[{"text":"【ダメージ】","color":"red"}]',name:'[{"text":"ダメージ","color":"red"}]',hover:'[{"text":"シールドや装甲の影響を受ける"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_damage"}}]'}
data modify storage ui:tmw272_text simple_value.mana set value {title:'[{"text":"【マナ】","color":"aqua"}]',name:'[{"text":"マナ","color":"aqua"}]',hover:'[{"text":"カードを使うのに必要\\nターン開始時に回復する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana"}}]'}
data modify storage ui:tmw272_text simple_value.mana_max set value {title:'[{"text":"【最大マナ】","color":"aqua"}]',name:'[{"text":"最大マナ","color":"aqua"}]',hover:'[{"text":"マナの最大回復量でもある"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_max"}}]'}
data modify storage ui:tmw272_text simple_value.var set value {title:'[{"text":"【汎用共通変数】","color":"white"}]',name:'[{"text":"汎用共通変数","color":"white"}]',hover:'[{"text":"汎用共通変数"}]',score:'[{"score":{"name":"$var","objective":"ui_temp"}}]'}
data modify storage ui:tmw272_text simple_value.rand set value {title:'[{"text":"【汎用共通乱数】","color":"white"}]',name:'[{"text":"汎用共通乱数","color":"white"}]',hover:'[{"text":"汎用共通乱数"}]',score:'[{"score":{"name":"$rand","objective":"ui_temp"}}]'}
data modify storage ui:tmw272_text simple_value.hand_num set value {title:'[{"text":"【手札枚数】","color":"white"}]',name:'[{"text":"手札枚数","color":"white"}]',hover:'[{"text":"上限はないが実質36"}]',score:'[{"text":"不正な数値です 管理者に問い合わせてください","color":"dark_red"}}]'}
data modify storage ui:tmw272_text simple_value.self_hurt set value {title:'[{"text":"【自傷】","color":"red"}]',name:'[{"text":"自傷","color":"red"}]',hover:'[{"text":"自身にダメージを与えた回数、体力を減らした回数ではない"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_self_hurt"}}]'}
data modify storage ui:tmw272_text simple_value.candle set value {title:'[{"text":"【蠟燭】","color":"yellow"}]',name:'[{"text":"蠟燭","color":"yellow"}]',hover:'[{"text":"スタック数に応じて蝋燭系のカードが強化される"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_candle"}}]'}
data modify storage ui:tmw272_text simple_value.index_count set value {title:'[{"text":"【数符】","color":"gold"}]',name:'[{"text":"数符","color":"gold"}]',hover:'[{"text":"特定のカードの効果が上昇する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_index_count"}}]'}
data modify storage ui:tmw272_text simple_value.more_attack_more set value {title:'[{"text":"【連撃】","color":"white"}]',name:'[{"text":"連撃","color":"white"}]',hover:'[{"text":"特定のカードの効果が上昇する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_more_attack_more"}}]'}
data modify storage ui:tmw272_text simple_value.curse set value {title:'[{"text":"【呪い】","color":"light_purple"}]',name:'[{"text":"呪い","color":"light_purple"}]',hover:'["",{"text":"閉幕 ","color":"green"},{"text":"体力がN減少する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_curse"}}]'}
data modify storage ui:tmw272_text simple_value.blessing set value {title:'[{"text":"【祝福】","color":"yellow"}]',name:'[{"text":"祝福","color":"yellow"}]',hover:'["",{"text":"閉幕 ","color":"green"},{"text":"体力がN増加する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_blessing"}}]'}
data modify storage ui:tmw272_text simple_value.shield set value {title:'[{"text":"【シールド】","color":"aqua"}]',name:'[{"text":"シールド","color":"aqua"}]',hover:'[{"text":"他者からのダメージを防ぐ\\n"},{"text":"閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_shield"}}]'}
data modify storage ui:tmw272_text simple_value.shield_next set value {title:'[{"text":"【待機シールド】","color":"aqua"}]',name:'[{"text":"待機シールド","color":"aqua"}]',hover:'[{"text":"次のターンの初めからあるシールド"},{"text":"\\n閉幕 ","color":"green"},{"text":"シールドに転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_shield_next"}}]'}
data modify storage ui:tmw272_text simple_value.seeds set value {title:'[{"text":"【苗】","color":"green"}]',name:'[{"text":"苗","color":"green"}]',hover:'[{"text":"特定のカードで使用する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_seeds"}}]'}
data modify storage ui:tmw272_text simple_value.crops set value {title:'[{"text":"【作物】","color":"green"}]',name:'[{"text":"作物","color":"green"}]',hover:'[{"text":"特定のカードで使用する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_crops"}}]'}
data modify storage ui:tmw272_text simple_value.bullet set value {title:'[{"text":"【弾丸】","color":"#aaaa00"}]',name:'[{"text":"弾丸","color":"#aaaa00"}]',hover:'[{"text":"特定のカードで使用する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_bullet"}}]'}
data modify storage ui:tmw272_text simple_value.slowness set value {title:'[{"text":"【鈍足】","color":"#00aaaa"}]',name:'[{"text":"鈍足","color":"#00aaaa"}]',hover:'[{"text":"カード効果で行うドローを妨害する"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_slowness"}}]'}
data modify storage ui:tmw272_text simple_value.hunger set value {title:'[{"text":"【空腹】","color":"#aa6600"}]',name:'[{"text":"空腹","color":"#aa6600"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力がN減少する","color":"white"},{"text":"\\n回復すると減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hunger"}}]'}
data modify storage ui:tmw272_text simple_value.burn set value {title:'[{"text":"【燃焼】","color":"#ff6600"}]',name:'[{"text":"燃焼","color":"#ff6600"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力がN減少する","color":"white"},{"text":"\\n燃焼","color":"#ff6600"},{"text":"が2/3（小数点以下切り捨て）になる","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_burn"}}]'}
data modify storage ui:tmw272_text simple_value.speed set value {title:'[{"text":"【加速】","color":"#00ffaa"}]',name:'[{"text":"加速","color":"#00ffaa"}]',hover:'[{"text":"ターン開始時のドローが1回増える","color":"white"},{"text":"\\n加速","color":"#00ffaa"},{"text":"が1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_speed"}}]'}
data modify storage ui:tmw272_text simple_value.strength set value {title:'[{"text":"【攻撃力】","color":"red"}]',name:'[{"text":"攻撃力","color":"red"}]',hover:'[{"text":"与えるダメージ量が変動する"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_strength"}}]'}
data modify storage ui:tmw272_text simple_value.poison set value {title:'[{"text":"【毒】","color":"#00aa00"}]',name:'[{"text":"毒","color":"#00aa00"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力が現在値の5%減少する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_poison"}}]'}
data modify storage ui:tmw272_text simple_value.invisible set value {title:'[{"text":"【透明化】","color":"white"}]',name:'[{"text":"透明化","color":"white"}]',hover:'[{"text":"標敵にならない","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_invisible"}}]'}
data modify storage ui:tmw272_text simple_value.regeneration set value {title:'[{"text":"【再生】","color":"#ff9966"}]',name:'[{"text":"再生","color":"#ff9966"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力がN増加する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_regeneration"}}]'}
data modify storage ui:tmw272_text simple_value.unluck set value {title:'[{"text":"【不運】","color":"#cccc00"}]',name:'[{"text":"不運","color":"#cccc00"}]',hover:'[{"text":"ランダムが最低値に固定される","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_unluck"}}]'}
data modify storage ui:tmw272_text simple_value.darkness set value {title:'[{"text":"【暗闇】","color":"#0066cc"}]',name:'[{"text":"暗闇","color":"#0066cc"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"マナがN減少する","color":"white"},{"text":"\\n消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_darkness"}}]'}
data modify storage ui:tmw272_text simple_value.resistance set value {title:'[{"text":"【耐性】","color":"blue"}]',name:'[{"text":"耐性","color":"blue"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"シールドがN増加する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_resistance"}}]'}
data modify storage ui:tmw272_text simple_value.fire_resistance set value {title:'[{"text":"【火炎耐性】","color":"#ff6600"}]',name:'[{"text":"火炎耐性","color":"#ff6600"}]',hover:'[{"text":"燃焼","color":"#ff6600"},{"text":"のダメージを無効化する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_fire_resistance"}}]'}
data modify storage ui:tmw272_text simple_value.flying set value {title:'[{"text":"【飛行】","color":"#0099ff"}]',name:'[{"text":"飛行","color":"#0099ff"}]',hover:'[{"text":"ランダムターゲットの対象にならない","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_flying"}}]'}
data modify storage ui:tmw272_text simple_value.trade set value {title:'[{"text":"【取引】","color":"#66ff66"}]',name:'[{"text":"取引","color":"#66ff66"}]',hover:'[{"text":"プレイヤーの選択を反映する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_trade"}}]'}
data modify storage ui:tmw272_text simple_value.nausea set value {title:'[{"text":"【酩酊】","color":"#cccc66"}]',name:'[{"text":"酩酊","color":"#cccc66"}]',hover:'[{"text":"標敵がランダムな敵に決定される","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_nausea"}}]'}
data modify storage ui:tmw272_text simple_value.bleed set value {title:'[{"text":"【出血】","color":"dark_red"}]',name:'[{"text":"出血","color":"dark_red"}]',hover:'[{"text":"カード使用時 ","color":"green"},{"text":"体力がN減少し","color":"white"},{"text":"\\n 出血","color":"dark_red"},{"text":"が2/3（小数点以下切り捨て）になる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_bleed"}}]'}
data modify storage ui:tmw272_text simple_value.blindness set value {title:'[{"text":"【盲目】","color":"black"}]',name:'[{"text":"盲目","color":"black"}]',hover:'[{"text":"全体対象が標敵のみに変化する","color":"white"},{"text":"\\n自身への判定は引き継がれる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_blindness"}}]'}
data modify storage ui:tmw272_text simple_value.glowing set value {title:'[{"text":"【発光】","color":"gold"}]',name:'[{"text":"発光","color":"gold"}]',hover:'[{"text":"透明化の効果を打ち消す","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_glowing"}}]'}
data modify storage ui:tmw272_text simple_value.luck set value {title:'[{"text":"【幸運】","color":"green"}]',name:'[{"text":"幸運","color":"green"}]',hover:'[{"text":"ランダムが最高値に固定される","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_luck"}}]'}
data modify storage ui:tmw272_text simple_value.wither set value {title:'[{"text":"【枯渇】","color":"dark_gray"}]',name:'[{"text":"枯渇","color":"dark_gray"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力が現在値の5%+N減少する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_wither"}}]'}
data modify storage ui:tmw272_text simple_value.armor set value {title:'[{"text":"【装甲】","color":"dark_aqua"}]',name:'[{"text":"装甲","color":"dark_aqua"}]',hover:'[{"text":"受けるダメージ量が変動する"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_armor"}}]'}
data modify storage ui:tmw272_text simple_value.seal set value {title:'[{"text":"【封印】","color":"gray"}]',name:'[{"text":"封印","color":"gray"}]',hover:'[{"text":"カードのコストがN上昇する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_seal"}}]'}
data modify storage ui:tmw272_text simple_value.invulnerable set value {title:'[{"text":"【無敵】","color":"yellow"}]',name:'[{"text":"無敵","color":"yellow"}]',hover:'[{"text":"ダメージを受けなくなる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_invulnerable"}}]'}
data modify storage ui:tmw272_text simple_value.only_one set value {title:'[{"text":"【唯一】","color":"gold"}]',name:'[{"text":"唯一","color":"gold"}]',hover:'[{"text":"特定のカードを使うと変動する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_only_one"}}]'}
data modify storage ui:tmw272_text simple_value.energy set value {title:'[{"text":"【電力】","color":"#ffffcc"}]',name:'[{"text":"電力","color":"#ffffcc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_energy"}}]'}
data modify storage ui:tmw272_text simple_value.construct set value {title:'[{"text":"【構造】","color":"#ccffff"}]',name:'[{"text":"構造","color":"#ccffff"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_construct"}}]'}
data modify storage ui:tmw272_text simple_value.void set value {title:'[{"text":"【虚無】","color":"#6600cc"}]',name:'[{"text":"虚無","color":"#6600cc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_void"}}]'}
data modify storage ui:tmw272_text simple_value.myth set value {title:'[{"text":"【神秘】","color":"#99ffcc"}]',name:'[{"text":"神秘","color":"#99ffcc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_myth"}}]'}
data modify storage ui:tmw272_text simple_value.taint set value {title:'[{"text":"【汚染】","color":"dark_purple"}]',name:'[{"text":"汚染","color":"dark_purple"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_taint"}}]'}
data modify storage ui:tmw272_text simple_value.insanity set value {title:'[{"text":"【狂気】","color":"dark_red"}]',name:'[{"text":"狂気","color":"dark_red"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_insanity"}}]'}
data modify storage ui:tmw272_text simple_value.stun set value {title:'[{"text":"【行動不能】","color":"gray"}]',name:'[{"text":"行動不能","color":"gray"}]',hover:'[{"text":"カード使用不能","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_stun"}}]'}
data modify storage ui:tmw272_text simple_value.shock set value {title:'[{"text":"【帯電】","color":"#cccc00"}]',name:'[{"text":"帯電","color":"#cccc00"}]',hover:'["",{"text":"カード使用後 ","color":"green"},{"text":"Nダメージ、マナN減少、消滅"},{"text":"\\n自身の帯電が増加した直後は発動しない"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_shock"}}]'}
data modify storage ui:tmw272_text simple_value.freeze set value {title:'[{"text":"【凍結】","color":"#66ccff"}]',name:'[{"text":"凍結","color":"#66ccff"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"1ダメージ、1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_freeze"}}]'}
data modify storage ui:tmw272_text simple_value.undying set value {title:'[{"text":"【不死】","color":"#99ff66"}]',name:'[{"text":"不死","color":"#99ff66"}]',hover:'[{"text":"戦線離脱を防ぐ"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_undying"}}]'}
data modify storage ui:tmw272_text simple_value.undying_count set value {title:'[{"text":"【不死回数】","color":"#99ff66"}]',name:'[{"text":"不死回数","color":"#99ff66"}]',hover:'[{"text":"不死の発動回数"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_undying_count"}}]'}
data modify storage ui:tmw272_text simple_value.lethal_range set value {title:'[{"text":"【致死域】","color":"#993300"}]',name:'[{"text":"致死域","color":"#993300"}]',hover:'[{"text":"体力がN以下になると戦線離脱する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_lethal_range"}}]'}
data modify storage ui:tmw272_text simple_value.soul_break set value {title:'[{"text":"【魂壊】","color":"#99ffff"}]',name:'[{"text":"魂壊","color":"#99ffff"}]',hover:'["",{"text":"閉幕 ","color":"green"},{"text":" 体力が最大値のN%減少する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_soul_break"}}]'}
data modify storage ui:tmw272_text simple_value.dodge set value {title:'[{"text":"【回避】","color":"#9999ff"}]',name:'[{"text":"回避","color":"#9999ff"}]',hover:'[{"text":"この数値以下の他者からのダメージを防ぎ\\n"},{"text":" その後に受ける攻撃以外のターゲットから外れる\\n"},{"text":"数値以上の他者からのダメージを受けたとき消滅\\n"},{"text":"閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dodge"}}]'}
data modify storage ui:tmw272_text simple_value.dodge_next set value {title:'[{"text":"【待機回避】","color":"#9999ff"}]',name:'[{"text":"待機回避","color":"#9999ff"}]',hover:'[{"text":"次のターンの初めからある回避"},{"text":"\\n閉幕 ","color":"green"},{"text":"回避に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dodge_next"}}]'}
data modify storage ui:tmw272_text simple_value.accumulation set value {title:'[{"text":"【蓄積】","color":"#996666"}]',name:'[{"text":"蓄積","color":"#996666"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_accumulation"}}]'}
data modify storage ui:tmw272_text simple_value.fairy set value {title:'[{"text":"【妖精】","color":"#cc9933"}]',name:'[{"text":"妖精","color":"#cc9933"}]',hover:'[{"text":"カード使用時 ","color":"green"},{"text":"体力がN減少する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"体力がN減少し、この値が半分になる","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_fairy"}}]'}

data modify storage ui:tmw272_text simple_value.turn_count set value {title:'[{"text":"【経過ターン数】","color":"gray"}]',name:'[{"text":"経過ターン数","color":"gray"}]',hover:'[{"text":"全員で共通の値を持つ"}]',score:'[{"score":{"name": "@e[tag=tmw272_active_match,limit=1]","objective": "ui_tmw272_match_round"}}]'}
data modify storage ui:tmw272_text simple_value.repeat set value {title:'[{"text":"【この効果の発動数】","color":"gray"}]',name:'[{"text":"この効果の発動数","color":"gray"}]',hover:'[{"text":"0になると効果が消滅"}]',score:'[{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat"}]'}
