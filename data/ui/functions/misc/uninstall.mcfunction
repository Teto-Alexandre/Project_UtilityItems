tellraw @a ["",{"text":"ProjectUI","color":"white"},{"text":"> ","color":"green"},{"text":"スコアボードの無効化をします","color":"gray"}]

## 主な全ての計算に使用
    scoreboard objectives remove ui_calc1
    scoreboard objectives remove ui_calc2
    scoreboard objectives remove ui_calc3
    scoreboard objectives remove ui_tc
    scoreboard objectives remove ui_temp
    scoreboard objectives remove ui_temp2
    #独立は義務です 個々が干渉しないように割り当てるテキトーな数字
    scoreboard objectives remove ui_is
    scoreboard objectives remove ui_is2

## 特殊武装のスキル発動関連
    scoreboard objectives remove ui_tmw_id
    scoreboard objectives remove ui_tmw_id2
    scoreboard objectives remove ui_tmw_id_old
    scoreboard objectives remove ui_tmw_id_old2
    scoreboard objectives remove ui_slotable
    scoreboard objectives remove ui_st
    scoreboard objectives remove ui_st2
    scoreboard objectives remove ui_di
    scoreboard objectives remove ui_tmw_con_id
    scoreboard objectives remove ui_face_up
    #未分類だけどとりあえず連射させたくない奴
    scoreboard objectives remove ui_ct

## ランダム用
    scoreboard objectives remove ui_rand

## 数字ライブラリ
    scoreboard objectives remove ui_num

## HP最大値管理用
    scoreboard objectives remove ui_hp
    scoreboard objectives remove ui_hp_calc
    scoreboard objectives remove ui_hp_plus
    scoreboard objectives remove ui_hp_plusc

## 条件起動型
    scoreboard objectives remove ui_dc
    scoreboard objectives remove ui_dc_r
    scoreboard objectives remove ui_uset
    scoreboard objectives remove ui_usec
    scoreboard objectives remove ui_usep
    scoreboard objectives remove ui_uses
    scoreboard objectives remove ui_use1
    scoreboard objectives remove ui_use2
    scoreboard objectives remove ui_use2_tc
    scoreboard objectives remove ui_usec2
    scoreboard objectives remove ui_usec2_tc
    scoreboard objectives remove ui_lg
    #コープスフラッグ専用
    scoreboard objectives remove ui_openc
    #scoreboard objectives remove ui_openb
    #scoreboard objectives remove ui_opene
    #scoreboard objectives remove ui_opens
    #scoreboard objectives remove ui_openi
    scoreboard objectives remove ui_ddn
    scoreboard objectives remove ui_dda
    scoreboard objectives remove ui_ddr
    #scoreboard objectives remove ui_dtn
    #scoreboard objectives remove ui_dta
    #scoreboard objectives remove ui_dtr
    #scoreboard objectives remove ui_dbs
    scoreboard objectives remove ui_move_s
    scoreboard objectives remove ui_move_w
    scoreboard objectives remove ui_move_d
    scoreboard objectives remove ui_kills
    scoreboard objectives remove ui_deaths

## 条件逐次更新型
    scoreboard objectives remove ui_rot_x
    scoreboard objectives remove ui_rot_x_old
    scoreboard objectives remove ui_rot_y
    scoreboard objectives remove ui_rot_y_old

## トリガー
    scoreboard objectives remove ui_trg
    scoreboard objectives remove ui_trg2
    
## 魔導障壁耐久値
    scoreboard objectives remove ui_dr
    scoreboard objectives remove ui_dhp
    scoreboard objectives remove ui_dhpm

## 暁の翼専用
    scoreboard objectives remove ui_fp
    scoreboard objectives remove ui_ft
    scoreboard objectives remove ui_fc

## 凍て付いた博愛専用
    scoreboard objectives remove ui_tmw102_id

## ブロック破壊用
    scoreboard objectives remove ui_break
    scoreboard objectives remove ui_mine
    scoreboard objectives remove ui_mine_f
    scoreboard objectives remove ui_mine_wood
    scoreboard objectives remove ui_mine_stone
    scoreboard objectives remove ui_mine_iron
    scoreboard objectives remove ui_mine_diamond
    scoreboard objectives remove ui_mine_gold
    scoreboard objectives remove ui_mine_nether
    scoreboard objectives remove ui_cut
    scoreboard objectives remove ui_cut_f
    scoreboard objectives remove ui_cut_wood
    scoreboard objectives remove ui_cut_stone
    scoreboard objectives remove ui_cut_iron
    scoreboard objectives remove ui_cut_diamond
    scoreboard objectives remove ui_cut_gold
    scoreboard objectives remove ui_cut_nether
    scoreboard objectives remove ui_dig
    scoreboard objectives remove ui_dig_f
    scoreboard objectives remove ui_dig_wood
    scoreboard objectives remove ui_dig_stone
    scoreboard objectives remove ui_dig_iron
    scoreboard objectives remove ui_dig_diamond
    scoreboard objectives remove ui_dig_gold
    scoreboard objectives remove ui_dig_nether
    scoreboard objectives remove ui_harv
    scoreboard objectives remove ui_harv_f
    scoreboard objectives remove ui_harv_wood
    scoreboard objectives remove ui_harv_stone
    scoreboard objectives remove ui_harv_iron
    scoreboard objectives remove ui_harv_diamond
    scoreboard objectives remove ui_harv_gold
    scoreboard objectives remove ui_harv_nether

## プレイヤー区別用id
    scoreboard objectives remove ui_id
    scoreboard objectives remove ui_idc
    scoreboard objectives remove ui_team
    scoreboard objectives remove ui_obj_id

## 工業用
        scoreboard objectives remove ui_i_ltc
        scoreboard objectives remove ui_i_su
        scoreboard objectives remove ui_i_sum
        scoreboard objectives remove ui_i_suo
        scoreboard objectives remove ui_i_suc
        scoreboard objectives remove ui_i_sui
        scoreboard objectives remove ui_i_suu
        scoreboard objectives remove ui_i_sug
        scoreboard objectives remove ui_i_id
        scoreboard objectives remove ui_i_idc
        scoreboard objectives remove ui_i_link
        scoreboard objectives remove ui_i_gui
        scoreboard objectives remove ui_i_gui_mode
        scoreboard objectives remove ui_i_gui_mode2
        scoreboard objectives remove ui_i_gui_recipe
        scoreboard objectives remove ui_i_recipe
        scoreboard objectives remove ui_i_recipe2
        scoreboard objectives remove ui_i_ct
        scoreboard objectives remove ui_i_ctt
        scoreboard objectives remove ui_i_ctp
        scoreboard objectives remove ui_i_supitem
        scoreboard objectives remove ui_i_supitem2
        scoreboard objectives remove ui_i_conitem
        scoreboard objectives remove ui_i_conitem2
        scoreboard objectives remove ui_i_resitem
        scoreboard objectives remove ui_i_resitem2
        scoreboard objectives remove ui_i_resitemr
        scoreboard objectives remove ui_i_item
        scoreboard objectives remove ui_i_item2
        scoreboard objectives remove ui_i_item_calc
    
## 特殊効果付き食べ物用
    scoreboard objectives remove ui_cookie

## 主に銃系統（リロードと弾薬がある射撃武器）に使用
    scoreboard objectives remove ui_bm
    scoreboard objectives remove ui_bm_temp
    scoreboard objectives remove ui_bm_lim
    scoreboard objectives remove ui_br
    scoreboard objectives remove ui_br_temp
    scoreboard objectives remove ui_bg
    scoreboard objectives remove ui_rt
    scoreboard objectives remove ui_grs
    scoreboard objectives remove ui_bc
    scoreboard objectives remove ui_bc2
    scoreboard objectives remove ui_autohit
    scoreboard objectives remove ui_bpart
    scoreboard objectives remove ui_hpart
    scoreboard objectives remove ui_bmods
    scoreboard objectives remove ui_hmods
    scoreboard objectives remove ui_kb
    scoreboard objectives remove ui_bdt
    scoreboard objectives remove ui_dmg
    scoreboard objectives remove ui_gct
    scoreboard objectives remove ui_gms
    scoreboard objectives remove ui_bu
    scoreboard objectives remove ui_bt
    scoreboard objectives remove ui_gt
    scoreboard objectives remove ui_gpc
    scoreboard objectives remove ui_bcp
    scoreboard objectives remove ui_snipe

## スキルツリー
    scoreboard objectives remove ui_skilltree_v
    scoreboard objectives remove ui_skillget
    scoreboard objectives remove ui_skillpoint
    scoreboard objectives remove ui_skillpointC

## 魔術用
    #血の魔術
        scoreboard objectives remove ui_m_bc
        scoreboard objectives remove ui_m_dd

## サイコロ用
    scoreboard objectives remove ui_d_num
    scoreboard objectives remove ui_d_luck
    scoreboard objectives remove ui_d_addmax
    scoreboard objectives remove ui_d_addmin
    scoreboard objectives remove ui_d_addnum
    scoreboard objectives remove ui_d_mult

## 釣り用
    scoreboard objectives remove ui_use_frod
    #scoreboard objectives remove ui_fish_tc

## レベルシステム用
    scoreboard objectives remove ui_lvl_craft_exp
    scoreboard objectives remove ui_lvl_craft_lvl
    scoreboard objectives remove ui_lvl_mine_exp
    scoreboard objectives remove ui_lvl_mine_lvl
    scoreboard objectives remove ui_lvl_cut_exp
    scoreboard objectives remove ui_lvl_cut_lvl
    scoreboard objectives remove ui_lvl_dig_exp
    scoreboard objectives remove ui_lvl_dig_lvl
    scoreboard objectives remove ui_lvl_harv_exp
    scoreboard objectives remove ui_lvl_harv_lvl

## 必殺技カウント
    scoreboard objectives remove ui_paint
    scoreboard objectives remove ui_tmw237_survive

## 復活、ゲームモード関連
    #復活までの時間
        scoreboard objectives remove ui_rst

## ダンジョンメーカー
    #チェストの表示
    scoreboard objectives remove ui_cm
    scoreboard objectives remove ui_mana
    scoreboard objectives remove ui_mana_gen
    scoreboard objectives remove ui_stone
    scoreboard objectives remove ui_stone_gen
    scoreboard objectives remove ui_wood
    scoreboard objectives remove ui_wood_gen
    scoreboard objectives remove ui_cost_block
    scoreboard objectives remove ui_cost_data
    scoreboard objectives remove ui_cost_mana
    scoreboard objectives remove ui_cost_stone
    scoreboard objectives remove ui_cost_wood
    scoreboard objectives remove ui_cost_core
    scoreboard objectives remove ui_cost_stair
    scoreboard objectives remove ui_cost_shield1
    scoreboard objectives remove ui_path
    scoreboard objectives remove ui_core
    scoreboard objectives remove ui_death_dt
    scoreboard objectives remove ui_d_hpm
    scoreboard objectives remove ui_d_hp
    scoreboard objectives remove ui_d_shm
    scoreboard objectives remove ui_d_sh
    scoreboard objectives remove ui_d_d

## 装備用
    scoreboard objectives remove ui_tmw601_head
    scoreboard objectives remove ui_tmw601_chest
    scoreboard objectives remove ui_tmw601_legs
    scoreboard objectives remove ui_tmw601_feet

## コモン

    ### MOB
    scoreboard objectives remove ui_common_mob_target_obj

## ROB
    scoreboard objectives remove ui_tmw501_19_world
    scoreboard objectives remove ui_tmw501_19_mct
    scoreboard objectives remove ui_tmw501_19_now_mode
    scoreboard objectives remove ui_tmw501_19_now_hud
    scoreboard objectives remove ui_tmw501_19_now_jet
    scoreboard objectives remove ui_tmw501_19_now_en
    scoreboard objectives remove ui_tmw501_19_now_s1
    scoreboard objectives remove ui_tmw501_19_now_s2
    scoreboard objectives remove ui_tmw501_19_now_shock_absorber
    scoreboard objectives remove ui_tmw501_19_now_life
    scoreboard objectives remove ui_tmw501_19_now_respawn_time
    scoreboard objectives remove ui_tmw501_19_stat_en_max
    scoreboard objectives remove ui_tmw501_19_stat_en_regen
    scoreboard objectives remove ui_tmw501_19_stat_en_use_hud
    scoreboard objectives remove ui_tmw501_19_stat_en_use_jet
    scoreboard objectives remove ui_tmw501_19_stat_en_use_speed
    scoreboard objectives remove ui_tmw501_19_stat_jet_type
    scoreboard objectives remove ui_tmw501_19_stat_speed_type
    scoreboard objectives remove ui_tmw501_19_stat_s1_max
    scoreboard objectives remove ui_tmw501_19_stat_s1_regen
    scoreboard objectives remove ui_tmw501_19_stat_s2_max
    scoreboard objectives remove ui_tmw501_19_stat_s2_regen
    scoreboard objectives remove ui_tmw501_19_stat_rot_x
    scoreboard objectives remove ui_tmw501_19_stat_rot_y
    scoreboard objectives remove ui_tmw501_19_stat_fda
    scoreboard objectives remove ui_tmw501_19_stat_mov
    scoreboard objectives remove ui_tmw501_19_stat_ilv
    scoreboard objectives remove ui_tmw501_19_stat_hudt
    scoreboard objectives remove ui_tmw501_19_test_fd
    scoreboard objectives remove ui_tmw501_19_test_dt
