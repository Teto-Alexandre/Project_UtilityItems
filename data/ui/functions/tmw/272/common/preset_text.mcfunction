#data modify storage ui:tmw272_text simple_value set value {}

# フィードバック
data modify storage ui:tmw272_text simple_value.hand_num_limit set value {title:'[{"text":"【上限手札】","color":"white"}]',name:'[{"text":"上限手札","color":"white"}]',hover:'[{"text":"これを超えて手札を引く行動は発生しない"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hand_num_limit"}}]'}
data modify storage ui:tmw272_text simple_value.health_limit set value {title:'[{"text":"【上限体力】","color":"red"}]',name:'[{"text":"上限体力","color":"red"}]',hover:'[{"text":"体力はこれ以下の値になる"},{"text":"\\n毎tick反映されている"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_health_limit"}}]'}
data modify storage ui:tmw272_text simple_value.health_max set value {title:'[{"text":"【最大体力】","color":"red"}]',name:'[{"text":"最大体力","color":"red"}]',hover:'[{"text":"最も高かったタイミングの体力"},{"text":"\\n毎tick計測されている"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_health_max"}}]'}
data modify storage ui:tmw272_text simple_value.health set value {title:'[{"text":"【体力】","color":"red"}]',name:'[{"text":"体力","color":"red"}]',hover:'[{"text":"減ると戦線離脱する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_health"}}]'}
data modify storage ui:tmw272_text simple_value.mana set value {title:'[{"text":"【マナ】","color":"aqua"}]',name:'[{"text":"マナ","color":"aqua"}]',hover:'[{"text":"カードを使うのに必要\\nターン開始時に回復する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana"}}]'}
data modify storage ui:tmw272_text simple_value.mana_limit set value {title:'[{"text":"【上限マナ】","color":"aqua"}]',name:'[{"text":"上限マナ","color":"aqua"}]',hover:'[{"text":"マナはこれ以下の値になる"},{"text":"\\n毎tick反映されている"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_limit"}}]'}
data modify storage ui:tmw272_text simple_value.mana_max set value {title:'[{"text":"【最大マナ】","color":"aqua"}]',name:'[{"text":"最大マナ","color":"aqua"}]',hover:'[{"text":"マナの最大回復量でもある"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_max"}}]'}
data modify storage ui:tmw272_text simple_value.mana_up set value {title:'[{"text":"【上昇マナ】","color":"aqua"}]',name:'[{"text":"上昇マナ","color":"aqua"}]',hover:'[{"text":"マナの最大上昇量"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_up"}}]'}
data modify storage ui:tmw272_text simple_value.var set value {title:'[{"text":"【汎用共通変数】","color":"white"}]',name:'[{"text":"汎用共通変数","color":"white"}]',hover:'[{"text":"汎用共通変数"}]',score:'[{"score":{"name":"$var","objective":"ui_temp"}}]'}
data modify storage ui:tmw272_text simple_value.rand set value {title:'[{"text":"【汎用共通乱数】","color":"white"}]',name:'[{"text":"汎用共通乱数","color":"white"}]',hover:'[{"text":"汎用共通乱数"}]',score:'[{"score":{"name":"$rand","objective":"ui_temp"}}]'}
data modify storage ui:tmw272_text simple_value.hand_num set value {title:'[{"text":"【手札枚数】","color":"white"}]',name:'[{"text":"手札枚数","color":"white"}]',hover:'[{"text":"上限はないが実質36"}]',score:'[{"text":"不正な数値です 管理者に問い合わせてください","color":"dark_red"}}]'}
data modify storage ui:tmw272_text simple_value.self_hurt set value {title:'[{"text":"【自傷】","color":"red"}]',name:'[{"text":"自傷","color":"red"}]',hover:'[{"text":"自身にダメージを与えた回数、体力を減らした回数ではない"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_self_hurt"}}]'}
data modify storage ui:tmw272_text simple_value.decay set value {title:'[{"text":"【崩壊】","color":"dark_red"}]',name:'[{"text":"崩壊","color":"dark_red"}]',hover:'[{"text":"自身の効果で体力を減らした回数"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_decay"}}]'}
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
data modify storage ui:tmw272_text simple_value.strength_next set value {title:'[{"text":"【待機攻撃力】","color":"red"}]',name:'[{"text":"待機攻撃力","color":"red"}]',hover:'[{"text":"次のターンの初めからある攻撃力"},{"text":"\\n閉幕 ","color":"green"},{"text":"攻撃力に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_strength_next"}}]'}
data modify storage ui:tmw272_text simple_value.poison set value {title:'[{"text":"【毒】","color":"#00aa00"}]',name:'[{"text":"毒","color":"#00aa00"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力が現在値の5%減少する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_poison"}}]'}
data modify storage ui:tmw272_text simple_value.invisible set value {title:'[{"text":"【透明化】","color":"white"}]',name:'[{"text":"透明化","color":"white"}]',hover:'[{"text":"標敵にならない","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_invisible"}}]'}
data modify storage ui:tmw272_text simple_value.regeneration set value {title:'[{"text":"【再生】","color":"#ff9966"}]',name:'[{"text":"再生","color":"#ff9966"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力がN増加する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_regeneration"}}]'}
data modify storage ui:tmw272_text simple_value.luck set value {title:'[{"text":"【幸運】","color":"green"}]',name:'[{"text":"幸運","color":"green"}]',hover:'[{"text":"ランダムがより高い数値になるように追加でN回ロールする","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"半減する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_luck"}}]'}
data modify storage ui:tmw272_text simple_value.unluck set value {title:'[{"text":"【不運】","color":"#cccc00"}]',name:'[{"text":"不運","color":"#cccc00"}]',hover:'[{"text":"ランダムがより低い数値になるように追加でN回ロールする","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"半減する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_unluck"}}]'}
data modify storage ui:tmw272_text simple_value.darkness set value {title:'[{"text":"【暗闇】","color":"#0066cc"}]',name:'[{"text":"暗闇","color":"#0066cc"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"マナがN減少する","color":"white"},{"text":"\\n消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_darkness"}}]'}
data modify storage ui:tmw272_text simple_value.resistance set value {title:'[{"text":"【耐性】","color":"blue"}]',name:'[{"text":"耐性","color":"blue"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"シールドがN増加する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_resistance"}}]'}
data modify storage ui:tmw272_text simple_value.fire_resistance set value {title:'[{"text":"【火炎耐性】","color":"#ff6600"}]',name:'[{"text":"火炎耐性","color":"#ff6600"}]',hover:'[{"text":"燃焼","color":"#ff6600"},{"text":"のダメージを無効化する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_fire_resistance"}}]'}
data modify storage ui:tmw272_text simple_value.flying set value {title:'[{"text":"【飛行】","color":"#0099ff"}]',name:'[{"text":"飛行","color":"#0099ff"}]',hover:'[{"text":"ランダムターゲットの対象にならない","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_flying"}}]'}
data modify storage ui:tmw272_text simple_value.trade set value {title:'[{"text":"【取引】","color":"#66ff66"}]',name:'[{"text":"取引","color":"#66ff66"}]',hover:'[{"text":"プレイヤーの選択を反映する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_trade"}}]'}
data modify storage ui:tmw272_text simple_value.nausea set value {title:'[{"text":"【酩酊】","color":"#cccc66"}]',name:'[{"text":"酩酊","color":"#cccc66"}]',hover:'[{"text":"標敵がランダムな敵に決定される","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_nausea"}}]'}
data modify storage ui:tmw272_text simple_value.bleed set value {title:'[{"text":"【出血】","color":"dark_red"}]',name:'[{"text":"出血","color":"dark_red"}]',hover:'[{"text":"カード使用時 ","color":"green"},{"text":"体力がN減少し","color":"white"},{"text":"\\n 出血","color":"dark_red"},{"text":"が2/3（小数点以下切り捨て）になる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_bleed"}}]'}
data modify storage ui:tmw272_text simple_value.bleed_next set value {title:'[{"text":"【待機出血】","color":"dark_red"}]',name:'[{"text":"待機出血","color":"dark_red"}]',hover:'[{"text":"次のターンの初めからある出血"},{"text":"\\n閉幕 ","color":"green"},{"text":"出血に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_bleed_next"}}]'}
data modify storage ui:tmw272_text simple_value.blindness set value {title:'[{"text":"【盲目】","color":"gray"}]',name:'[{"text":"盲目","color":"gray"}]',hover:'[{"text":"全体対象が標敵のみに変化する","color":"white"},{"text":"\\n自身への判定は引き継がれる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_blindness"}}]'}
data modify storage ui:tmw272_text simple_value.glowing set value {title:'[{"text":"【発光】","color":"gold"}]',name:'[{"text":"発光","color":"gold"}]',hover:'[{"text":"透明化の効果を打ち消す","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_glowing"}}]'}
data modify storage ui:tmw272_text simple_value.wither set value {title:'[{"text":"【枯渇】","color":"dark_gray"}]',name:'[{"text":"枯渇","color":"dark_gray"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力が現在値の5%+N減少する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_wither"}}]'}
data modify storage ui:tmw272_text simple_value.armor set value {title:'[{"text":"【装甲】","color":"dark_aqua"}]',name:'[{"text":"装甲","color":"dark_aqua"}]',hover:'[{"text":"受けるダメージ量が変動する"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_armor"}}]'}
data modify storage ui:tmw272_text simple_value.armor_next set value {title:'[{"text":"【待機装甲】","color":"dark_aqua"}]',name:'[{"text":"待機装甲","color":"dark_aqua"}]',hover:'[{"text":"次のターンの初めからある装甲"},{"text":"\\n閉幕 ","color":"green"},{"text":"装甲に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_armor_next"}}]'}
data modify storage ui:tmw272_text simple_value.seal set value {title:'[{"text":"【封印】","color":"gray"}]',name:'[{"text":"封印","color":"gray"}]',hover:'[{"text":"カードのコストがN上昇する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_seal"}}]'}
data modify storage ui:tmw272_text simple_value.seal_next set value {title:'[{"text":"【待機封印】","color":"gray"}]',name:'[{"text":"待機封印","color":"gray"}]',hover:'[{"text":"次のターンの初めからある封印"},{"text":"\\n閉幕 ","color":"green"},{"text":"封印に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_seal_next"}}]'}
data modify storage ui:tmw272_text simple_value.invulnerable set value {title:'[{"text":"【無敵】","color":"yellow"}]',name:'[{"text":"無敵","color":"yellow"}]',hover:'[{"text":"ダメージ効果の対象から外れる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_invulnerable"}}]'}
data modify storage ui:tmw272_text simple_value.only_one set value {title:'[{"text":"【唯一】","color":"gold"}]',name:'[{"text":"唯一","color":"gold"}]',hover:'[{"text":"特定のカードを使うと変動する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_only_one"}}]'}
data modify storage ui:tmw272_text simple_value.energy set value {title:'[{"text":"【電力】","color":"#ffffcc"}]',name:'[{"text":"電力","color":"#ffffcc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_energy"}}]'}
data modify storage ui:tmw272_text simple_value.construct set value {title:'[{"text":"【構造】","color":"#ccffff"}]',name:'[{"text":"構造","color":"#ccffff"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_construct"}}]'}
data modify storage ui:tmw272_text simple_value.void set value {title:'[{"text":"【虚無】","color":"#6600cc"}]',name:'[{"text":"虚無","color":"#6600cc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_void"}}]'}
data modify storage ui:tmw272_text simple_value.myth set value {title:'[{"text":"【神秘】","color":"#99ffcc"}]',name:'[{"text":"神秘","color":"#99ffcc"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_myth"}}]'}
data modify storage ui:tmw272_text simple_value.taint set value {title:'[{"text":"【汚染】","color":"dark_purple"}]',name:'[{"text":"汚染","color":"dark_purple"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_taint"}}]'}
data modify storage ui:tmw272_text simple_value.insanity set value {title:'[{"text":"【狂気】","color":"dark_red"}]',name:'[{"text":"狂気","color":"dark_red"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_insanity"}}]'}
data modify storage ui:tmw272_text simple_value.stun set value {title:'[{"text":"【行動不能】","color":"gray"}]',name:'[{"text":"行動不能","color":"gray"}]',hover:'[{"text":"カード使用不能","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_stun"}}]'}
data modify storage ui:tmw272_text simple_value.shock set value {title:'[{"text":"【帯電】","color":"#cccc00"}]',name:'[{"text":"帯電","color":"#cccc00"}]',hover:'["",{"text":"カード使用後 ","color":"green"},{"text":"体力がN減少、マナN減少、消滅"},{"text":"\\n自身の帯電が増加した直後は発動しない"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_shock"}}]'}
data modify storage ui:tmw272_text simple_value.freeze set value {title:'[{"text":"【凍結】","color":"#66ccff"}]',name:'[{"text":"凍結","color":"#66ccff"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力が1減少、1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_freeze"}}]'}
data modify storage ui:tmw272_text simple_value.undying set value {title:'[{"text":"【不死】","color":"#99ff66"}]',name:'[{"text":"不死","color":"#99ff66"}]',hover:'[{"text":"戦線離脱を防ぐ"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_undying"}}]'}
data modify storage ui:tmw272_text simple_value.undying_count set value {title:'[{"text":"【不死回数】","color":"#99ff66"}]',name:'[{"text":"不死回数","color":"#99ff66"}]',hover:'[{"text":"不死の発動回数"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_undying_count"}}]'}
data modify storage ui:tmw272_text simple_value.lethal_range set value {title:'[{"text":"【致死域】","color":"#993300"}]',name:'[{"text":"致死域","color":"#993300"}]',hover:'[{"text":"体力がN以下になると戦線離脱する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_lethal_range"}}]'}
data modify storage ui:tmw272_text simple_value.soul_break set value {title:'[{"text":"【魂壊】","color":"#99ffff"}]',name:'[{"text":"魂壊","color":"#99ffff"}]',hover:'["",{"text":"閉幕 ","color":"green"},{"text":" 体力が最大値のN%減少する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_soul_break"}}]'}
data modify storage ui:tmw272_text simple_value.dodge set value {title:'[{"text":"【回避】","color":"#9999ff"}]',name:'[{"text":"回避","color":"#9999ff"}]',hover:'[{"text":"この数値以下の他者からのダメージを防ぎ\\n"},{"text":" その後に受ける攻撃以外のターゲットから外れる\\n"},{"text":"数値以上の他者からのダメージを受けたとき消滅\\n"},{"text":"閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dodge"}}]'}
data modify storage ui:tmw272_text simple_value.dodge_next set value {title:'[{"text":"【待機回避】","color":"#9999ff"}]',name:'[{"text":"待機回避","color":"#9999ff"}]',hover:'[{"text":"次のターンの初めからある回避"},{"text":"\\n閉幕 ","color":"green"},{"text":"回避に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dodge_next"}}]'}
data modify storage ui:tmw272_text simple_value.accumulation set value {title:'[{"text":"【蓄積】","color":"#996666"}]',name:'[{"text":"蓄積","color":"#996666"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_accumulation"}}]'}
data modify storage ui:tmw272_text simple_value.fairy set value {title:'[{"text":"【妖精】","color":"#cc9933"}]',name:'[{"text":"妖精","color":"#cc9933"}]',hover:'[{"text":"カード使用時 ","color":"green"},{"text":"体力がN減少する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"体力がN減少し、この値が半分になる","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_fairy"}}]'}
data modify storage ui:tmw272_text simple_value.memory set value {title:'[{"text":"【記憶】","color":"green"}]',name:'[{"text":"記憶","color":"green"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_memory"}}]'}
data modify storage ui:tmw272_text simple_value.chain set value {title:'[{"text":"【連鎖】","color":"#ffccff"}]',name:'[{"text":"連鎖","color":"#ffccff"}]',hover:'[{"text":"カード使用後 ","color":"green"},{"text":"1増加する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"0になる","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_chain"}}]'}
data modify storage ui:tmw272_text simple_value.hope set value {title:'[{"text":"【希望】","color":"#cc66cc"}]',name:'[{"text":"希望","color":"#cc66cc"}]',hover:'[{"text":"自身の回復量が変動する"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hope"}}]'}
data modify storage ui:tmw272_text simple_value.hope_next set value {title:'[{"text":"【待機希望】","color":"#cc66cc"}]',name:'[{"text":"待機希望","color":"#cc66cc"}]',hover:'[{"text":"次のターンの初めからある希望"},{"text":"\\n閉幕 ","color":"green"},{"text":"希望に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hope_next"}}]'}
data modify storage ui:tmw272_text simple_value.ec set value {title:'[{"text":"【エネルギークリスタル】","color":"dark_red"}]',name:'[{"text":"エネルギークリスタル","color":"dark_red"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_ec"}}]'}
data modify storage ui:tmw272_text simple_value.karma set value {title:'[{"text":"【カルマ】","color":"red"}]',name:'[{"text":"カルマ","color":"red"}]',hover:'[{"text":"閉幕時、一定確率で敗北する"},{"text":"\\n100以上なら死亡する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_karma"}}]'}
data modify storage ui:tmw272_text simple_value.tenacity set value {title:'[{"text":"【執念】","color":"#ff33cc"}]',name:'[{"text":"執念","color":"#ff33cc"}]',hover:'[{"text":"体力入れ替えと平均化を無効化する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_tenacity"}}]'}
data modify storage ui:tmw272_text simple_value.hexproof set value {title:'[{"text":"【呪禁】","color":"#99ffcc"}]',name:'[{"text":"呪禁","color":"#99ffcc"}]',hover:'[{"text":"他者の変数への干渉を断絶する"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hexproof"}}]'}
data modify storage ui:tmw272_text simple_value.stop set value {title:'[{"text":"【停止】","color":"#99ccff"}]',name:'[{"text":"停止","color":"#99ccff"}]',hover:'[{"text":"他者からのダメージをN度だけ1/10にする"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_stop"}}]'}
data modify storage ui:tmw272_text simple_value.cost_next set value {title:'[{"text":"【コスト】","color":"white"}]',name:'[{"text":"コスト","color":"white"}]',hover:'[{"text":"次に使うカードのコストが変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_cost_next"}}]'}
data modify storage ui:tmw272_text simple_value.water set value {title:'[{"text":"【水源】","color":"#66aaff"}]',name:'[{"text":"水源","color":"#66aaff"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_water"}}]'}
data modify storage ui:tmw272_text simple_value.product set value {title:'[{"text":"【製造】","color":"gray"}]',name:'[{"text":"製造","color":"gray"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_product"}}]'}
data modify storage ui:tmw272_text simple_value.fund set value {title:'[{"text":"【資金】","color":"gold"}]',name:'[{"text":"資金","color":"gold"}]',hover:'[{"text":"特定のカードで変動する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_fund"}}]'}
data modify storage ui:tmw272_text simple_value.charge set value {title:'[{"text":"【チャージ】","color":"#ffd700"}]',name:'[{"text":"チャージ","color":"#ffd700"}]',hover:'[{"text":"次の攻撃か回復時の効果量がN上昇する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_charge"}}]'}
data modify storage ui:tmw272_text simple_value.deathblow set value {title:'[{"text":"【必殺】","color":"#ff7f50"}]',name:'[{"text":"必殺","color":"#ff7f50"}]',hover:'[{"text":"次の攻撃時、ダメージが不死を直接減らし停止を無視する\\n無敵の効果を貫通するが、その場合ダメージは半減する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_deathblow"}}]'}
data modify storage ui:tmw272_text simple_value.surehit set value {title:'[{"text":"【必中】","color":"#4169e1"}]',name:'[{"text":"必中","color":"#4169e1"}]',hover:'[{"text":"カード使用時に消費される\\n透明化、飛行、酩酊、盲目、混乱、幻惑の影響を受けなくなる"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_surehit"}}]'}
data modify storage ui:tmw272_text simple_value.confusion set value {title:'[{"text":"【混乱】","color":"#bc8f8f"}]',name:'[{"text":"混乱","color":"#bc8f8f"}]',hover:'[{"text":"標敵が全員からランダムに変化する","color":"white"},{"text":"\\nランダムと全体効果で敵味方の区別がなくなる","color":"white"},{"text":"\\n閉幕&被ダメージ ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_confusion"}}]'}
data modify storage ui:tmw272_text simple_value.dazzle set value {title:'[{"text":"【幻惑】","color":"#8b008b"}]',name:'[{"text":"幻惑","color":"#8b008b"}]',hover:'[{"text":"自身か全体系の効果でない場合 ▼","color":"white"},{"text":"\\nターゲットがN体少なくなる","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dazzle"}}]'}
data modify storage ui:tmw272_text simple_value.self_heal set value {title:'[{"text":"【自身回復】","color":"green"}]',name:'[{"text":"自身回復","color":"green"}]',hover:'[{"text":"自身を回復した量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_self_heal"}}]'}
data modify storage ui:tmw272_text simple_value.other_heal set value {title:'[{"text":"【他者回復】","color":"green"}]',name:'[{"text":"他者回復","color":"green"}]',hover:'[{"text":"他者を回復した量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_other_heal"}}]'}
data modify storage ui:tmw272_text simple_value.draw set value {title:'[{"text":"【ドロー回数】","color":"yellow"}]',name:'[{"text":"ドロー回数","color":"yellow"}]',hover:'[{"text":"ドローした枚数を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_draw"}}]'}
data modify storage ui:tmw272_text simple_value.discard set value {title:'[{"text":"【破棄回数】","color":"yellow"}]',name:'[{"text":"破棄回数","color":"yellow"}]',hover:'[{"text":"カードを捨てた枚数を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_discard"}}]'}
data modify storage ui:tmw272_text simple_value.damage set value {title:'[{"text":"【ダメージ量】","color":"red"}]',name:'[{"text":"ダメージ量","color":"red"}]',hover:'[{"text":"ダメージを与えた量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_damage"}}]'}
data modify storage ui:tmw272_text simple_value.determination set value {title:'[{"text":"【決意】","color":"yellow"}]',name:'[{"text":"決意","color":"yellow"}]',hover:'[{"text":"戦線離脱を防ぎ、最大マナ-1"},{"text":"発動時に減少し、体力を最大体力の半分まで回復する"},{"text":"その後最大体力は半分になる"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_determination"}}]'}
data modify storage ui:tmw272_text simple_value.soul set value {title:'[{"text":"【魂】","color":"red"}]',name:'[{"text":"魂","color":"red"}]',hover:'[{"text":"開幕 "},{"text":"N%の確率で最大マナが1増える"},{"text":"また、魂壊と相殺し合う"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_soul"}}]'}
data modify storage ui:tmw272_text simple_value.damage_taken set value {title:'[{"text":"【被ダメージ量】","color":"red"}]',name:'[{"text":"被ダメージ量","color":"red"}]',hover:'[{"text":"受けたダメージを示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_damage_taken"}}]'}
data modify storage ui:tmw272_text simple_value.hp_decrease set value {title:'[{"text":"【体力減少量】","color":"red"}]',name:'[{"text":"体力減少量","color":"red"}]',hover:'[{"text":"体力減少量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hp_decrease"}}]'}
data modify storage ui:tmw272_text simple_value.hp_increase set value {title:'[{"text":"【体力増加量】","color":"red"}]',name:'[{"text":"体力増加量","color":"red"}]',hover:'[{"text":"体力減少量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hp_increase"}}]'}
data modify storage ui:tmw272_text simple_value.hp_crease_temp set value {title:'[{"text":"【最後の体力記録量】","color":"red"}]',name:'[{"text":"最後の体力記録量","color":"red"}]',hover:'[{"text":"最後の体力記録量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_hp_crease_temp"}}]'}
data modify storage ui:tmw272_text simple_value.mp_decrease set value {title:'[{"text":"【マナ減少量】","color":"aqua"}]',name:'[{"text":"マナ減少量","color":"aqua"}]',hover:'[{"text":"マナ減少量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_decrease"}}]'}
data modify storage ui:tmw272_text simple_value.mp_increase set value {title:'[{"text":"【マナ増加量】","color":"aqua"}]',name:'[{"text":"マナ増加量","color":"aqua"}]',hover:'[{"text":"マナ減少量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_increase"}}]'}
data modify storage ui:tmw272_text simple_value.mp_crease_temp set value {title:'[{"text":"【最後のマナ記録量】","color":"aqua"}]',name:'[{"text":"最後のマナ記録量","color":"aqua"}]',hover:'[{"text":"最後のマナ記録量を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mana_crease_temp"}}]'}
data modify storage ui:tmw272_text simple_value.card_used set value {title:'[{"text":"【カード使用】","color":"white"}]',name:'[{"text":"カード使用","color":"white"}]',hover:'[{"text":"カードを使ったtickに1になる"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_card_used"}}]'}
data modify storage ui:tmw272_text simple_value.latest_cost set value {title:'[{"text":"【当該コスト】","color":"white"}]',name:'[{"text":"当該コスト","color":"white"}]',hover:'[{"text":"この効果のコスト\\nあなたが最後に支払ったものに基づく"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_latest_cost"}}]'}
data modify storage ui:tmw272_text simple_value.restraint set value {title:'[{"text":"【束縛】","color":"#A06060"}]',name:'[{"text":"束縛","color":"#A06060"}]',hover:'[{"text":"カード効果で行うドロー時に体力がN減少し"},{"text":"束縛","color":"#A06060"},{"text":"が1減少する","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_restraint"}}]'}
data modify storage ui:tmw272_text simple_value.saturation set value {title:'[{"text":"【満腹】","color":"#ff6699"}]',name:'[{"text":"満腹","color":"#ff6699"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"4減少し、減った量の50%だけ開幕時に自身回復","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_saturation"}}]'}
data modify storage ui:tmw272_text simple_value.mana_increase_by_self set value {title:'[{"text":"【自身効果で上昇したマナの記録最大値】","color":"aqua"}]',name:'[{"text":"自身効果で上昇したマナの記録最大値","color":"aqua"}]',hover:'[{"text":"自身効果で上昇したマナの記録最大値を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mp_increase_by_self"}}]'}
data modify storage ui:tmw272_text simple_value.mana_max_increase_by_self set value {title:'[{"text":"【自身効果で上昇した最大マナの記録最大値】","color":"aqua"}]',name:'[{"text":"自身効果で上昇した最大マナの記録最大値","color":"aqua"}]',hover:'[{"text":"自身効果で上昇した最大マナの記録最大値を示す"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mp_max_increase_by_self"}}]'}
data modify storage ui:tmw272_text simple_value.sin set value {title:'[{"text":"【罪】","color":"#870000"}]',name:'[{"text":"罪","color":"#870000"}]',hover:'[{"text":"特定のカードで増減する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_sin"}}]'}
data modify storage ui:tmw272_text simple_value.mind_wish set value {title:'[{"text":"【心願】","color":"#ece038"}]',name:'[{"text":"心願","color":"#ece038"}]',hover:'[{"text":"特定のカードで増減する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_mind_wish"}}]'}
data modify storage ui:tmw272_text simple_value.sheep set value {title:'[{"text":"【羊】","color":"white"}]',name:'[{"text":"羊","color":"white"}]',hover:'[{"text":"特定のカードで増減する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_sheep"}}]'}
data modify storage ui:tmw272_text simple_value.harm set value {title:'[{"text":"【負傷】","color":"#db7093"}]',name:'[{"text":"負傷","color":"#db7093"}]',hover:'[{"text":"閉幕 ","color":"green"},{"text":"体力がN減少する","color":"white"},{"text":"\\n1減少する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_harm"}}]'}
data modify storage ui:tmw272_text simple_value.thorn set value {title:'[{"text":"【茨鎧】","color":"#4d9966"}]',name:'[{"text":"茨鎧","color":"#4d9966"}]',hover:'[{"text":"他者からダメージを受けた時に攻撃者の体力をN減らす","color":"white"},{"text":"\\n閉幕 ","color":"green"},{"text":"消滅する","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_thorn"}}]'}
data modify storage ui:tmw272_text simple_value.thorn_next set value {title:'[{"text":"【待機茨鎧】","color":"#4d9966"}]',name:'[{"text":"待機茨鎧","color":"#4d9966"}]',hover:'[{"text":"次のターンの初めからある茨鎧"},{"text":"\\n閉幕 ","color":"green"},{"text":"茨鎧に転化"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_thorn_next"}}]'}
data modify storage ui:tmw272_text simple_value.duplication set value {title:'[{"text":"【複製】","color":"white"}]',name:'[{"text":"複製","color":"white"}]',hover:'[{"text":"次に使うカード効果をN回発動する","color":"white"},{"text":"\\nその後この値は0になる","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_duplication"}}]'}
data modify storage ui:tmw272_text simple_value.dream set value {title:'[{"text":"【夢】","color":"gray"}]',name:'[{"text":"夢","color":"gray"}]',hover:'[{"text":"特定のカードで増減する"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_dream"}}]'}
data modify storage ui:tmw272_text simple_value.wound set value {title:'[{"text":"【重傷】","color":"dark_red"}]',name:'[{"text":"重傷","color":"dark_red"}]',hover:'[{"text":"自身の回復量がN減少する（半分以下にならない）"},{"text":"\\n閉幕 ","color":"green"},{"text":"1減少","color":"white"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_wound"}}]'}



data modify storage ui:tmw272_text simple_value.turn_count set value {title:'[{"text":"【経過ターン数】","color":"gray"}]',name:'[{"text":"経過ターン数","color":"gray"}]',hover:'[{"text":"全員で共通の値を持つ"}]',score:'[{"score":{"name": "@e[tag=tmw272_active_match,limit=1]","objective": "ui_tmw272_match_round"}}]'}
data modify storage ui:tmw272_text simple_value.true_turn_count set value {title:'[{"text":"【真の経過ターン数】","color":"gray"}]',name:'[{"text":"真の経過ターン数","color":"gray"}]',hover:'[{"text":"全員で共通の値を持つ"}]',score:'[{"score":{"name": "@e[tag=tmw272_active_match,limit=1]","objective": "ui_tmw272_true_match_round"}}]'}
data modify storage ui:tmw272_text simple_value.repeat set value {title:'[{"text":"【この効果の発動数】","color":"gray"}]',name:'[{"text":"この効果の発動数","color":"gray"}]',hover:'[{"text":"0になると効果が消滅"}]',score:'[{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat"}]'}
data modify storage ui:tmw272_text simple_value.num_consume set value {title:'[{"text":"【残り使用回数】","color":"gray"}]',name:'[{"text":"残り使用回数","color":"gray"}]',hover:'[{"text":"0になると効果が消滅"}]',score:'[{"storage":"ui:temp","nbt":"card.num_consume"}]'}
data modify storage ui:tmw272_text simple_value.condition set value {title:'[{"text":"参照","color":"gray"}]',name:'[{"text":"参照","color":"gray"}]',hover:'[{"text":"コンディション"}]',score:'[{"score":{"name":"$condition_checker","objective":"ui_temp"}}]'}

data modify storage ui:tmw272_text simple_value.temp1 set value {title:'[{"text":"一時変数1","color":"gray"}]',name:'[{"text":"一時変数1","color":"gray"}]',hover:'[{"text":"temp1"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_temp1"}}]'}
data modify storage ui:tmw272_text simple_value.temp2 set value {title:'[{"text":"一時変数2","color":"gray"}]',name:'[{"text":"一時変数2","color":"gray"}]',hover:'[{"text":"temp2"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_temp2"}}]'}
data modify storage ui:tmw272_text simple_value.temp3 set value {title:'[{"text":"一時変数3","color":"gray"}]',name:'[{"text":"一時変数3","color":"gray"}]',hover:'[{"text":"temp3"}]',score:'[{"score":{"name":"@s","objective":"ui_tmw272_temp3"}}]'}
