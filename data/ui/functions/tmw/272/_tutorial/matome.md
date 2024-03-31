基本の形
{cost:1,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1}]}

以下cgの中に書くもの　＞＞＞

（after_effect限定）
delay       :　　、発動までのtick数
delay_base  :　　、繰り返した時のdelayの再設定の値
delay_type  :　　、0-2 (1なら↑が開幕からの時間、2なら閉幕までの時間)
repeat      :　　、繰り返す回数
Name or name:　　、display.NameのAE版
Lore or lore:　　、display.LoreのAE版

cost            - 必須      - マナコストの設定 例：cost:3 or cost:{amount:3,type:1,mods:[{name:"turn_count",mult:-1.0}]}
    amount      - 必須      - コスト
    bypass:1    - 　　      - 何がなんでも実行可能
    type        - 　　      - 1から3 にしてね
        1のとき（マナコストが各要素の数に合わせて直線で変動）
            min
            mods   - ↑を使うなら 基本の形 type:1,mods:[{name:"turn_count",pow:0,mult:-1.0,add:0}]
                name    - 軽減に使うステータス  下の「ステータスの名前対応表」を見ること
                mod     - 　　、Nで割った余りにしたい時に使う
                pow     - 　　、N乗、整数値だけよ
                mult    - 　　、N倍、小数第二位まで対応 例：0.05
                add     - 　　、Nを加算、整数値 例:-10
        2のとき（要素全てを満たしていないと使えない）
            mods   - ↑を使うなら 基本の形 type:2,mods:[{name:"turn_count",min:5}]
                name    - 軽減に使うステータス  下の「ステータスの名前対応表」を見ること
                mod     - 　　、Nで割った余りにしたい時に使う
                pow     - 　　、N乗、整数値だけよ
                mult    - 　　、N倍、小数第二位まで対応 例：0.05
                add     - 　　、Nを加算、整数値 例:-10
                 ↓ 上の結果で出た数値が
                min     - 　　、最小値
                max     - 　　、最大値 の間なら「満たしている」状態
        3のとき（要素を満たしているとコストが変動）
            mods   - ↑を使うなら 基本の形 type:3,mods:[{name:"turn_count",min:5,var:-2}]
                name    - 軽減に使うステータス  下の「ステータスの名前対応表」を見ること
                mod     - 　　、Nで割った余りにしたい時に使う
                pow     - 　　、N乗、整数値だけよ
                mult    - 　　、N倍、小数第二位まで対応 例：0.05
                add     - 　　、Nを加算、整数値 例:-10
                 ↓ 上の結果で出た数値が
                min     - 　　、最小値
                max     - 　　、最大値 の間なら「満たしている」状態
                 ↓ 満たしているなら
                var     - 必須、コストがこの値だけ増減する

particle_laser  - 任意      - 1 にしてね（レーザー表示）
particle_self   - 任意      - 数値idに対応するパーティクル表示
particle_look   - 任意      - 数値idに対応するパーティクル表示
particle_target - 任意      - 数値idに対応するパーティクル表示
particle_other  - 任意      - 数値idに対応するパーティクル表示

effects
    target_type
        1 : 見ている相手
        2 : 自分
        3 : 自分以外の敵全員
        4 : 全員
        5 : 自分以外敵全員からランダムに N 人
            target_count: N
        6 : 全員からランダムに N 人
            target_count: N
        7 : (AfterEffect限定) 実行時のターゲット
        8 : 自分と見ている相手
        9 : 戦線に参加している全員（show_textなどにどうぞ）
        10: 自分含む味方全員
        11: 自分含む味方から target_count の数だけランダムに抽選
        12: 自分以外味方全員
        13: 自分以外味方から target_count の数だけランダムに抽選
        14: (summon限定) 召喚者をターゲット
        15: この一連のカードでターゲットになったエンティティ全員
        16: 自分以外全員
        17: 自分以外全員からランダムに N 人
            target_count: N
        18: 自分 + 自分以外全員からランダムに N 人
            target_count: N

    effect_type (拡張オプションはeffect_type:""の横に書くこと)
        damage              : ダメージ
        heal                : 回復
        draw                : ドロー
        discard             : カードを捨てる
        create              : カードを創造する
        duplication         : 次のカードの効果を複製
        after_effect        : チュートリアル５を読んで
        health_averaging    : ターゲット全員で体力を平均化
        health_swap         : ターゲット全員で体力を入れ替え
        condition_input     : チュートリアル３を読んで
        modify_value        : ステータスにvarだけ加算
        mana                : マナを加算
            effect_mode:"set" : 加算の代わりに代入
        mana_max            : マナ最大値を加算
            effect_mode:"set" : 加算の代わりに代入
        show_text           : テキストを表示
            target_type - 表示する対象
            text        - 表示する内容 例 text:'[{"selector":"@a[sort=furthest,limit=1]"},{"text":"の座標を表示します ↓"}]'
            
    var : エフェクトに入れる数値
        rand - ランダムな数 - 基本の形 rand:{min:2,max:6}
            min 最小値
            max 最大値
        var_input - ステータスから入力する - 基本の形 var_input:{name:"health"}























ステータスの名前対応表

health              - 体力
mana                - マナ
mana_max            - マナ最大値
hand_num            - 手札の枚数
self_hurt           - 自傷回数（数値のみ存在）
candle              - ろうそく（数値のみ存在）
index_count         - 数符（数値のみ存在）
more_attack_more    - MOM（数値のみ存在）
turn_count          - ターン経過数
blessing            - 開幕：永続n回復
curse               - 開幕：永続nダメージ
slowness            - 常在：ドロー枚数がn減る、発動時減る、開幕1減る
hunger              - 開幕：永続nダメージ、回復でこの値だけ減少
burn                - 開幕：nダメージ、2/3になる
speed               - 開幕：1ドロー、1減る
strength            - 攻撃時：varが増減、消える
poison              - 開幕：体力の5%ダメージ、1減る
invisible           - 常在：標敵にならなくなる（VE干渉）、開幕1減る
regeneration        - 開幕：n回復、1減る
unluck              - 常在：ランダム値で常に最低値が出る、開幕1減る
darkness            - 開幕：次のマナn減少、消える
resistance          - 開幕：シールドn、1減る
fire_resistance     - 開幕：燃焼を無効化、1減る
flying              - 常在：ランダムの対象にならない、開幕1減る
trade               - 変数 ui_tmw272_trade ターン終了時、「取引に応じる」の状況リセット
nausea              - 常在：標敵を取る攻撃がランダム敵一体に変わる、開幕1減る
bleed               - 常在：カードを使うとnダメージ、発動と開幕で2/3
blindness           - 常在：敵全体対象が標敵に、全員対象が自分と標敵に変わる、開幕1減る
glowing             - 常在：透明化していてもロックできるようになる、開幕1減る
luck                - 常在：ランダム値で常に最高値が出る、開幕1減る
wither              - 開幕：体力の5%+nダメージ、1減る



パーティクルのID対応表

1 : 白いひし形
2 : 汎用ダメージエフェクト
3 : 斬嵐/
4 : 魂を吸い取られる
5 : 赤いひし形
6 : 出血
7 : 感電風
8 : 火属性
9 : 氷属性
10 : 風属性
11 : ラレユピアサーのアレ
12 : 呪い
13 : 祝福
14 : 回復
15 : 強化（赤）
16 : 強化（黄）
17 : 強化（青）
18 : 弱化（紫）
19 : 弱化（緑）
20 : 弱化（水）
21 : 力を貯めている（ポータル）
22 : 力を貯めている（ウォーデン）
23 : 力を貯めている（オレンジのよく見る感じの）
24 : 発砲音（ポラリスのライフル）
25 : 発砲音（ポラリスのマシンガン）
26 : 発砲音（ポラリスのPDW）
27 : 発砲音（ポラリスのショットガン）
28 : 発砲音（ポラリスのハンドガン）
29 : 発砲音（アイアンハーツのピストル）
30 : 発砲音（アイアンハーツのハンドガンマガジン・連射（静音は要らない気がする））
31 : 発砲音（アイアンハーツのアサルトライフル）
32 : 発砲音（アイアンハーツのショットガン）
33 : 発砲音（アイアンハーツのスナイパーライフル）
34 : 発砲音（PGMヘカート2）
35 : デスカウントレクイエム
36 : 矢を発射する音
37 : ブレイズの火球
38 : ガストの火球
39 : エンドラの鳴き声
40 : エンドラ死亡
41 : ウィザー召喚
42 : ウィザーの髑髏
43 : ウィザー死亡
44 : エルダーガーディアン登場演出
45 : テレポート
46 : クロスボウ
47 : 紫電
1001 : 白い剣の軌跡