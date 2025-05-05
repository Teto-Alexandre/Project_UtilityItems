基本の形
{cost:1,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,## effect_type:"damage",var:1}]}

# 以下cgの中に書くもの >>>

    (after_effect限定)
    delay           - 発動までのtick数
    delay_base      - 繰り返した時のdelayの再設定の値
    delay_type      - 0-2 (1なら↑が開幕からの時間、2なら閉幕までの時間)
    repeat          - 繰り返す回数
    Name or name    - display.NameのAE版
    Lore or lore    - display.LoreのAE版

    (必須)
    cost            - マナコストの設定 例：cost:3 or cost:{amount:3,type:1,mods:[{name:"turn_count",mult:-1.0}]}
    effects         - カード効果を設定

    (任意)
    particle            - パーティクルを一括設定 例：{laser:1,self:1,target:1,look:1,other:1}
    list_self           - ui:temp card.list に自身のアイテム情報を入力
    bypass_cost_change  - 変数のコスト変更を受けない
    turn1               - この名称のカードはターン中1回しか使えない（詳細設定可能） 例 turn:{interval:3,limit:2}
    not_consume         - 消費しない
    num_consume         - 繰り返し使える回数を定義
    indep               - だいたいの変数を無視する

    (変数オプトアウト)
    no_stun
    no_duplication
    no_bleed
    no_fairy
    no_cost_next
    no_surehit
    no_shock
    no_chain





# effectノード共通 >>>

    (ほぼ必須)
    effect_type
    var rand var_input
    target_type                     - （詳細解説へ）

    (任意)
    condition                       - 条件設定
    delay                           - 入力したtick数+1だけ遅延(delay:0なら1tick遅れる)
    each                            - https://discord.com/channels/974519506561032223/974520558446317618/1323515708469940235
    case                            - []の形式で指定したノードの中から1つをランダムで選ぶ
    target_count                    - （詳細解説へ）
    target_exclusion_summon t_e_s   - 召喚物を対象から除外する
    target_selector                 - セレクターでターゲットを指定
    target_entity                   - エンティティidでターゲットを指定
    target_nbt                      - nbtでターゲットを指定

    (オプトアウト)
    indep                           - だいたい全部を無視する
    no_target_old                   - このノードのターゲットは target_type:15 に登録されない
    no_protection                   - 保護後のターゲット回避能力を無効化する
    no_dodge                        - 回避後のターゲット回避能力を無効化する
    no_intercept_command            - 誘発オフ
    no_intercept_command_from       - 
    no_intercept_command_to         - 
    no_reactive_effect              - 誘発オフ
    no_reactive_effect_from         - 
    no_reactive_effect_to           -   





## effect_type:"damage" >>>

    (必須)
    target_type
    var rand var_input

    (任意)
    reset_condition - condition の値をリセットする
    add_condition   - ノードの与ダメージを condition に加算
    mute            - ダメージのメッセージを出さない（変数の通知は出る）

    (オプトアウト)
    no_deathblow
    no_strength
    no_charge
    no_powerful
    no_invulnerable
    no_dodge
    no_shield
    no_self_hurt
    no_decay
    no_confusion
    no_protection

    (オプトイン)
    yes_shield      - 何が何でもシールドで防げるダメージになる、自傷とかに





## effect_type:"heal" >>>

    (必須)
    target_type
    var rand var_input

    (任意)
    under_zero      - 回復量の下限値 0 を解除する
    add_condition   - 回復量を condition に加算

    (オプトアウト)
    no_charge
    no_healing
    no_contract
    no_hope
    no_wound
    no_hunger





## effect_type:"draw" >>>

    (必須)
    target_type
    var rand var_input

    (任意)
    effect_mode:"steal" - ターゲットのデッキから自分の手札にドローする効果に変更する
    mute                - ドロー通知を非表示にする
    just_list           - ドローしたカードを手札に加えない
    add_list            - ドローしたカードのアイテム情報を ui:temp card.list に入力

    (オプトアウト)
    no_restraint
    no_slowness
    no_draw_count
    no_draw_effect      - draw_effect を誘発しない





## effect_type:"discard" >>>

    (必須)
    target_type
    var rand var_input

    (任意)
                        - 下の2つがない場合、condition は自動的に 0 になり、捨てたカードの枚数が condition に入力される
    no_condition        - condition のリセットを行わず、捨てたカードの枚数の加算も行わない
    add_condition       - condition はリセットせず、捨てたカードの枚数を condition に加算する
    condition_limit_1   - condition は上限値が1になる（破棄したか、していないかを検知するのに便利）
    macro               - 一致するカードのみを捨てるように変更 例：macro:{tmw:{cg:{only_one:2}}}
    mute                - 破棄通知を非表示にする
    only_one            - 唯一のみを破棄するように変更
    all                 - 唯一、非唯一問わず破棄するように変更（普通に clear を使うオプション）
    add_list            - 捨てたカードのアイテム情報を ui:temp card.list に入力

    (オプトアウト)
    no_discard_count
    no_discard_effect   - discard_effect を誘発しない





## effect_type:"create" >>> list からカードを N 枚ドローする

    (必須)
    target_type
    var rand var_input
    list                - 創造するカードのアイテム情報を list 型で記述する（ここが1つの状態でvarが2以上ならこのカードを複数枚創造する）

    (任意)
    no_shuffle          - list をシャッフルせずにカードを創造する
    mute                - 創造通知を非表示にする

    (オプトアウト)
    no_create_count
    no_draw_effect      - draw_effect を誘発しない





## effect_type:"duplication" >>> 変数【複製】を変更するためだけに実装されたノード、今使うなら代わりに {target_type:1,input:"duplication",var:1} を使ってください





## effect_type:"health_averaging" >>> ターゲット間に作用して体力を平均化する【執念】が付いているとこれのターゲットから外れる

    (必須)
    target_type





## effect_type:"health_swap" >>> ターゲット間に作用して体力を入れ替える【執念】が付いているとこれのターゲットから外れる

    (必須)
    target_type





## effect_type:"condition_input" >>> ターゲットの指定した変数の値を condition に加算する

    (必須)
    target_type
    input

    (任意)
    effect_mode:"add"           - これが記述されていない場合は実行前に condition を 0 にする
    invert                      - 加算する変わりに減算する





## effect_type:"modify_value" >>> 変数を操作する【呪禁】が付いているとこれのターゲットから外れる
                                input のみが記述されている場合、effect_type:"modify_value" が無くとも自動的にノードタイプがこれになる

    (必須)
    target_type
    var rand var_input
    input

    (任意)
    effect_mode:"set"           - 変数を加算する代わりに代入する 
    type:"particle"             - input が通常変数の代わりに particle の self,other,target,look,laser を扱う
    limit_zero                  - 下限値を 0 にする
    mute                        - 変数操作通知を表示しない





## effect_type:"mana" >>> 【マナ】を増やす、今使うなら代わりに {target_type:1,input:"mana",var:1} を使ってください

    (必須)
    target_type
    var rand var_input

    (任意)
    effect_mode:"=" effect_mode:"set"   - 変数を加算する代わりに代入する





## effect_type:"mana_max" >>> 【最大マナ】を増やす、今使うなら代わりに {target_type:1,input:"mana_max",var:1} を使ってください

    (必須)
    target_type
    var rand var_input

    (任意)
    effect_mode:"=" effect_mode:"set"   - 変数を加算する代わりに代入する





## effect_type:"show_text" >>> tellraw @a[tag=tmw272_temp_card_effect_target] {"storage":"ui:temp","nbt":"temp.effect.text","interpret": true}





## effect_type:"insert" >>> デッキトップに list からランダムな N 枚を挿入してシャッフルする

    (必須)
    target_type
    var rand var_input
    list                    - 創造するカードのアイテム情報を list 型で記述する（ここが1つの状態でvarが2以上ならこのカードを複数枚創造する）
    
    (任意)
    effect_mode:"swap"      - 実行前に自分の現在の一時デッキを空にする
    effect_mode:"prepend"   - 実行後のシャッフルをしない
    mute                    - 挿入通知を非表示にする
    
    (オプトアウト)
    なし





## effect_type:"last_used" >>> ターゲットは「最後に使ったカード」に登録されているカードを AE に入れる

    (必須)
    target_type
    
    (任意)
    merge:{}                - 「最後に使ったカード」から入力されるデータに merge するデータを入力、コストの上書きなどが可能
    effect_mode:"steal"     - 入力先が自分になる
    effect_mode:"random"    - 入力先がランダムな誰かになる
    effect_target:"me"      - target_type:7 の効果先を自身にする
    effect_target:"self"    - target_type:7 の効果先を使った人にする
    effect_target:"target"  - target_type:7 の効果先を現在のターゲットにする
    
    (オプトアウト)
    なし





## effect_type:"summon" >>> 

    (ほぼ必須)
    id      - 召喚する MOB の id、指定がない場合はブタが出てくる
    list    - 召喚物のデッキの内容がこれになる。9枚まで
    
    (任意)
    tag             - 召喚物の nbt タグを事前に設定する
    name            - CustomName と同じ扱い
    ArmorItems      - 同上
    HandItems       - 同上
    cant_use        - カードを使用しようとしなくなる、軽量化用
    mute_value      - ターン経過時の変数の通知を非表示にする
    mana            - 上限マナの値、mana_limitもある場合は初期最大マナになる
    mana_limit      - 上限マナの値
    health          - 初期、最大および上限体力の値、health_limitから上限を別で定義できる
    health_limit    - 上限体力の値
    team            - 所属チーム、無所属で出したりできる
    
    (オプトアウト)
    なし





## effect_type:"list_swap" >>> 自分のこの戦線でのデッキを list と入れ替える

    (必須)
    list                    - list 型で記述する
    
    (任意)
    なし
    
    (オプトアウト)
    なし





## effect_type:"misc" >>> misc って書けば何をやってもいいと思っている

    (選択)
    effect_mode:"reprogram" - ホットバーをデッキに入力する
    effect_mode:"return"    - このカードを手札に戻す
    effect_mode:"break"     - 一連のノード処理をここで終了する





## effect_type:"system" >>> system って書けば何をやってもいいと思っている

    (選択)
    effect_mode:"create_value"  - 変数を作成する
    effect_mode:"remove_value"  - 変数を削除する





## effect_type:"after_effect" >>> めちゃくちゃ長いので詳細解説を書く
                                cg のみが記述されている場合、effect_type:"after_effect" が無くとも自動的にノードタイプがこれになる
## effect_type:"death_effect" >>> 
## effect_type:"reactive_effect" >>> 
## effect_type:"intercept_command" >>> 
## effect_type:"modify_after_effect" >>> 長いので詳細解説
## effect_type:"modify_death_effect" >>> 
## effect_type:"modify_reactive_effect" >>> 
## effect_type:"modify_intercept_command" >>> 





## effect_type:"command" >>> command は何をやってもいい、任意のコマンドを即座に実行する

    (任意)
    target_type     - コマンドの実行者になる
    command:""      - 文字列の形でコマンドを指定する 例：effect_type:"command",command:"kill @s"
    list:["",""]    - list で複数のコマンドを指定する 例：effect_type:"command",list:["kill @s","kill @s"]





## effect_type:"name_condition" >>>
## effect_type:"lore_condition" >>>
    
    (必須)
    text:""     - ui:temp card.list にその文字列に該当するカードがあるなら condition を加算
