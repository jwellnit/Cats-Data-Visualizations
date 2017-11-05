# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auth_group", force: :cascade do |t|
    t.string "name", limit: 80, null: false
    t.index "name varchar_pattern_ops", name: "auth_group_name_a6ea08ec_like", using: :btree
    t.index ["name"], name: "auth_group_name_key", unique: true, using: :btree
  end

  create_table "auth_group_permissions", force: :cascade do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
    t.index ["group_id", "permission_id"], name: "auth_group_permissions_group_id_0cd325b0_uniq", unique: true, using: :btree
    t.index ["group_id"], name: "auth_group_permissions_0e939a4f", using: :btree
    t.index ["permission_id"], name: "auth_group_permissions_8373b171", using: :btree
  end

  create_table "auth_permission", force: :cascade do |t|
    t.string  "name",            limit: 255, null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
    t.index ["content_type_id", "codename"], name: "auth_permission_content_type_id_01ab375a_uniq", unique: true, using: :btree
    t.index ["content_type_id"], name: "auth_permission_417f1b1c", using: :btree
  end

  create_table "auth_user", force: :cascade do |t|
    t.string   "password",     limit: 128, null: false
    t.datetime "last_login"
    t.boolean  "is_superuser",             null: false
    t.string   "username",     limit: 150, null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 254, null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.datetime "date_joined",              null: false
    t.index "username varchar_pattern_ops", name: "auth_user_username_6821ab7c_like", using: :btree
    t.index ["username"], name: "auth_user_username_key", unique: true, using: :btree
  end

  create_table "auth_user_groups", force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "auth_user_groups_0e939a4f", using: :btree
    t.index ["user_id", "group_id"], name: "auth_user_groups_user_id_94350c0c_uniq", unique: true, using: :btree
    t.index ["user_id"], name: "auth_user_groups_e8701ad4", using: :btree
  end

  create_table "auth_user_user_permissions", force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
    t.index ["permission_id"], name: "auth_user_user_permissions_8373b171", using: :btree
    t.index ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_14a6b632_uniq", unique: true, using: :btree
    t.index ["user_id"], name: "auth_user_user_permissions_e8701ad4", using: :btree
  end

  create_table "data_cova_v11", primary_key: ["nces_lea_id", "academic_year_end", "grade"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "metroid"
    t.text    "metromicro"
    t.decimal "czid"
    t.decimal "countyid"
    t.decimal "cdcode"
    t.decimal "urban"
    t.decimal "pernid"
    t.decimal "perasn"
    t.decimal "perhsp"
    t.decimal "perblk"
    t.decimal "perwht"
    t.decimal "perfrl"
    t.decimal "pernonfrl"
    t.decimal "perell"
    t.decimal "perspeced"
    t.decimal "ind"
    t.decimal "asn"
    t.decimal "hsp"
    t.decimal "blk"
    t.decimal "wht"
    t.decimal "frl"
    t.decimal "nonfrl"
    t.decimal "totenrl"
    t.decimal "nsch"
    t.decimal "ncharters"
    t.decimal "ell"
    t.decimal "speced"
    t.decimal "elmgui"
    t.decimal "aides"
    t.decimal "elmtch"
    t.decimal "corsup"
    t.decimal "tottch"
    t.decimal "gslo"
    t.decimal "gshi"
    t.decimal "stutch_wht"
    t.decimal "stutch_blk"
    t.decimal "stutch_hsp"
    t.decimal "stutch_all"
    t.decimal "diffstutch_blkwht"
    t.decimal "diffstutch_hspwht"
    t.decimal "ratstutch_whtblk"
    t.decimal "ratstutch_whthsp"
    t.decimal "flunch_wht"
    t.decimal "flunch_blk"
    t.decimal "flunch_hsp"
    t.decimal "flunch_all"
    t.decimal "diffexplch_blkwht"
    t.decimal "diffexplch_hspwht"
    t.decimal "percharter_all"
    t.decimal "percharter_wht"
    t.decimal "percharter_blk"
    t.decimal "percharter_hsp"
    t.decimal "hswhtblk"
    t.decimal "hswhthsp"
    t.decimal "hsflnfl"
    t.decimal "ppex_tot"
    t.decimal "pexp_inst"
    t.decimal "pprev_tot"
    t.decimal "totppe_fleslope"
    t.decimal "instppe_fleslope"
    t.decimal "profocc_wht"
    t.decimal "baplus_wht"
    t.decimal "poverty517_wht"
    t.decimal "snap_wht"
    t.decimal "rent_wht"
    t.decimal "singmom_wht"
    t.decimal "samehouse_wht"
    t.decimal "unemp_wht"
    t.decimal "profocc_hsp"
    t.decimal "baplus_hsp"
    t.decimal "poverty517_hsp"
    t.decimal "snap_hsp"
    t.decimal "rent_hsp"
    t.decimal "singmom_hsp"
    t.decimal "samehouse_hsp"
    t.decimal "unemp_hsp"
    t.decimal "profocc_blk"
    t.decimal "baplus_blk"
    t.decimal "poverty517_blk"
    t.decimal "snap_blk"
    t.decimal "rent_blk"
    t.decimal "singmom_blk"
    t.decimal "samehouse_blk"
    t.decimal "unemp_blk"
    t.decimal "profocc_all"
    t.decimal "baplus_all"
    t.decimal "poverty517_all"
    t.decimal "singmom_all"
    t.decimal "snap_all"
    t.decimal "rent_all"
    t.decimal "samehouse_all"
    t.decimal "unemp_all"
    t.decimal "pctenglish"
    t.decimal "pctforeign"
    t.decimal "pctmexico"
    t.decimal "pctpuerto"
    t.decimal "pctcuba"
    t.decimal "pctcentral"
    t.decimal "pctsouth"
    t.decimal "inc50all"
    t.decimal "incrat9010all"
    t.decimal "incrat9050all"
    t.decimal "incrat5010all"
    t.decimal "inc50blk"
    t.decimal "incrat9010blk"
    t.decimal "incrat9050blk"
    t.decimal "incrat5010blk"
    t.decimal "inc50hsp"
    t.decimal "incrat9010hsp"
    t.decimal "incrat9050hsp"
    t.decimal "incrat5010hsp"
    t.decimal "inc50wht"
    t.decimal "incrat9010wht"
    t.decimal "incrat9050wht"
    t.decimal "incrat5010wht"
    t.decimal "giniall"
    t.decimal "giniwht"
    t.decimal "giniblk"
    t.decimal "ginihsp"
    t.decimal "paredvblkwht"
    t.decimal "paredvhspwht"
    t.decimal "incvblkwht"
    t.decimal "incvhspwht"
    t.decimal "baplus_mal"
    t.decimal "baplus_fem"
    t.decimal "pov_mal"
    t.decimal "pov_fem"
    t.decimal "occbus_mal"
    t.decimal "occbus_fem"
    t.decimal "occsci_mal"
    t.decimal "occsci_fem"
    t.decimal "occeduc_mal"
    t.decimal "occeduc_fem"
    t.decimal "occhealth_mal"
    t.decimal "occhealth_fem"
    t.decimal "occserv_mal"
    t.decimal "occserv_fem"
    t.decimal "occsasles_mal"
    t.decimal "occsales_fem"
    t.decimal "occtrade_mal"
    t.decimal "occtrade_fem"
    t.decimal "inlf_mal"
    t.decimal "inlf_fem"
    t.decimal "unemp_mal"
    t.decimal "unemp_fem"
    t.decimal "incvmalfem"
    t.decimal "educvmalfem"
    t.decimal "teenbirth_all"
    t.decimal "sesall"
    t.decimal "seswht"
    t.decimal "sesblk"
    t.decimal "seshsp"
    t.decimal "sesallimp1"
    t.decimal "sesallimp2"
    t.decimal "seswhtimp1"
    t.decimal "seswhtimp2"
    t.decimal "sesblkimp1"
    t.decimal "sesblkimp2"
    t.decimal "seshspimp1"
    t.decimal "seshspimp2"
    t.integer "state_lea_id"
    t.integer "academic_year_start"
  end

  create_table "data_dictionary", primary_key: ["attribute_name", "relation_name"], force: :cascade do |t|
    t.text    "relation_name",         null: false
    t.text    "source_attribute_name"
    t.text    "description"
    t.text    "domain"
    t.text    "source_organization"
    t.integer "source_id"
    t.text    "attribute_name",        null: false
    t.text    "type"
  end

  create_table "data_district_facts", primary_key: ["state_lea_id", "state_school_id", "academic_year_end", "academic_year_start"], force: :cascade do |t|
    t.decimal "americanindian_alaskan"
    t.integer "ap_courses"
    t.decimal "asian"
    t.integer "state_lea_id",                             null: false
    t.decimal "avg_yrs_edu_exp_dist"
    t.decimal "avg_yrs_edu_exp_lea"
    t.decimal "avg_yrs_edu_exp_total"
    t.decimal "black"
    t.text    "career_tech_center_name"
    t.text    "career_tech_center_website"
    t.text    "district_add_city"
    t.string  "district_add_state",             limit: 2
    t.text    "district_add_street"
    t.text    "district_add_zipcode"
    t.integer "district_enrollment"
    t.decimal "district_geog_size"
    t.integer "district_num_career_tech_prog"
    t.decimal "dropout_rate"
    t.decimal "econ_disadvtg"
    t.decimal "eng_lang_learner"
    t.integer "enrollment_career_tech_center"
    t.integer "enrollment_charter_school"
    t.decimal "female"
    t.text    "grades_offered",                                        array: true
    t.decimal "hawaiian_pacific_islander"
    t.decimal "hispanic"
    t.text    "iu_name"
    t.text    "iu_website"
    t.decimal "male"
    t.decimal "multiracial"
    t.integer "num_schools"
    t.decimal "pct_classes_high_qual_teachers"
    t.decimal "pct_gifted_students"
    t.integer "state_school_id",                          null: false
    t.integer "academic_year_end",                        null: false
    t.integer "academic_year_start",                      null: false
    t.decimal "special_ed"
    t.text    "telephone_no"
    t.text    "website"
    t.decimal "white"
    t.bigint  "nces_lea_id"
  end

  create_table "data_district_fiscal", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end"], force: :cascade do |t|
    t.integer "state_lea_id",                             null: false
    t.money   "fact_acq_and_const_expenditure", scale: 2
    t.money   "local_revenue",                  scale: 2
    t.money   "inst_expenditure",               scale: 2
    t.money   "cs_tuition_rate_reg_ed_student", scale: 2
    t.money   "supp_serve_expenditure",         scale: 2
    t.money   "avg_teach_sal",                  scale: 2
    t.money   "state_revenue",                  scale: 2
    t.money   "non_inst_expenditure",           scale: 2
    t.decimal "mv_pi_aid_ratio"
    t.money   "other_revenue",                  scale: 2
    t.money   "pupil_expenditure_inst",         scale: 2
    t.money   "cs_tuition_rate_spe_ed_student", scale: 2
    t.money   "gen_fund_balance",               scale: 2
    t.decimal "avg_daily_membership"
    t.money   "pupil_expenditure_total",        scale: 2
    t.money   "fed_revenue",                    scale: 2
    t.integer "academic_year_start",                      null: false
    t.integer "academic_year_end",                        null: false
    t.money   "finance_uses_expenditure",       scale: 2
    t.bigint  "nces_lea_id"
  end

  create_table "data_exam", primary_key: ["state_school_id", "subject", "student_group", "grade", "state_lea_id", "source", "academic_year_end", "academic_year_start"], force: :cascade do |t|
    t.integer "state_school_id",     null: false
    t.text    "subject",             null: false
    t.text    "student_group",       null: false
    t.text    "grade",               null: false
    t.integer "numscored"
    t.decimal "pctadvanced"
    t.decimal "pctproficient"
    t.decimal "pctbasic"
    t.decimal "pctbelowbasic"
    t.decimal "growth"
    t.text    "source",              null: false
    t.integer "state_lea_id",        null: false
    t.integer "academic_year_end",   null: false
    t.integer "academic_year_start", null: false
    t.index ["state_school_id", "state_lea_id"], name: "fki_exam_fkey", using: :btree
  end

  create_table "data_gapa_v11", primary_key: ["nces_lea_id", "academic_year_end", "grade", "state_lea_id", "academic_year_start"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "gapblk_ela"
    t.decimal "gapseblk_ela"
    t.decimal "gaphsp_ela"
    t.decimal "gapsehsp_ela"
    t.decimal "gapblk_math"
    t.decimal "gapseblk_math"
    t.decimal "gaphsp_math"
    t.decimal "gapsehsp_math"
    t.decimal "racepercent_ela"
    t.decimal "racepercent_math"
    t.integer "state_lea_id",        null: false
    t.integer "academic_year_start", null: false
    t.index ["nces_lea_id", "state_lea_id"], name: "fki_gapa_v11_fkey_exists", using: :btree
  end

  create_table "data_meana_v11", primary_key: ["nces_lea_id", "grade", "academic_year_end"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "gstdmn_ela"
    t.decimal "gstdmnva_ela"
    t.decimal "gstdmn_math"
    t.decimal "gstdmnva_math"
    t.integer "state_lea_id"
    t.integer "academic_year_start"
    t.index ["nces_lea_id", "state_lea_id"], name: "fki_meana_v11_fkey_exists", using: :btree
  end

  create_table "data_meand_v11", primary_key: ["nces_lea_id", "grade", "academic_year_end"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "cstdmn_ela"
    t.decimal "cstdmnva_ela"
    t.decimal "cstdmn_math"
    t.decimal "cstdmnva_math"
    t.integer "state_lea_id"
    t.integer "academic_year_start"
    t.index ["nces_lea_id", "state_lea_id"], name: "fki_meand_v11_fkey_exists", using: :btree
  end

  create_table "data_meang_v11", primary_key: ["nces_lea_id", "grade", "academic_year_end"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "mean_link_ela"
    t.decimal "se_link_ela"
    t.decimal "mean_link_math"
    t.decimal "se_link_math"
    t.integer "state_lea_id"
    t.integer "academic_year_start"
    t.index ["nces_lea_id", "state_lea_id"], name: "fki_meang_v11_fkey_exists", using: :btree
  end

  create_table "data_meanh_v11", primary_key: ["nces_lea_id", "grade", "academic_year_end"], force: :cascade do |t|
    t.integer "nces_lea_id",         null: false
    t.decimal "academic_year_end",   null: false
    t.decimal "grade",               null: false
    t.decimal "mean_edfa_ela"
    t.decimal "se_edfa_ela"
    t.decimal "mean_edfa_math"
    t.decimal "se_edfa_math"
    t.integer "state_lea_id"
    t.integer "academic_year_start"
    t.index ["nces_lea_id", "state_lea_id"], name: "fki_meanh_v11_fkey_exists", using: :btree
  end

  create_table "data_multi_year_grad_rate", primary_key: ["state_school_id", "academic_year_start", "time_period"], force: :cascade do |t|
    t.integer "state_school_id",               null: false
    t.integer "academic_year_start",           null: false
    t.integer "time_period",                   null: false
    t.integer "total_cohort"
    t.decimal "total_grads"
    t.float   "male"
    t.float   "female"
    t.float   "white"
    t.float   "hispanic"
    t.float   "black"
    t.float   "asian"
    t.float   "multiracial"
    t.float   "americanindianalaskan"
    t.float   "specialed"
    t.float   "econdisadv"
    t.float   "migrant"
    t.float   "ell"
    t.float   "nativehawaiianpacificislander"
    t.integer "academic_year_end"
    t.integer "state_lea_id"
    t.index ["state_school_id", "academic_year_start", "time_period"], name: "multiid", unique: true, using: :btree
    t.index ["state_school_id", "state_lea_id"], name: "fki_multi_year_grad_rate_fkey", using: :btree
  end

  create_table "data_private_school_elementary_enrollment", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "state_lea_id",                   null: false
    t.integer "academic_year_start",            null: false
    t.integer "academic_year_end",              null: false
    t.string  "category",            limit: 20
    t.integer "k4pp"
    t.integer "k4fpf"
    t.integer "k5pp"
    t.integer "k5fpf"
    t.integer "onepp"
    t.integer "onefpf"
    t.integer "twopp"
    t.integer "twofpf"
    t.integer "threepp"
    t.integer "threefpf"
    t.integer "fourpp"
    t.integer "fourfpf"
    t.integer "fivepp"
    t.integer "fivefpf"
    t.integer "sixpp"
    t.integer "sixfpf"
    t.integer "sevenepp"
    t.integer "sevenefpf"
    t.integer "eightepp"
    t.integer "eightefpf"
    t.integer "eugpp"
    t.integer "eugfpf"
    t.integer "totalee"
    t.integer "totalnrpp"
    t.integer "totalnrfpf"
    t.integer "totalrpp"
    t.integer "totalrfpf"
    t.integer "state_school_id",                null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_private_schools_elementary_enrollment_pkey", using: :btree
  end

  create_table "data_private_school_fulltime_equivalent_teachers", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "state_lea_id",                   null: false
    t.integer "academic_year_start",            null: false
    t.integer "academic_year_end",              null: false
    t.string  "category",            limit: 20
    t.float   "nurseryfte"
    t.float   "elementaryfte"
    t.float   "secondaryfte"
    t.float   "spedpreschfte"
    t.float   "totalfte"
    t.integer "state_school_id",                null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_private_schools_fulltime_equivalent_teachers_pkey", using: :btree
  end

  create_table "data_private_school_low_percentage", primary_key: ["state_lea_id", "academic_year_end", "academic_year_start"], force: :cascade do |t|
    t.integer "state_lea_id",        null: false
    t.float   "percent"
    t.integer "academic_year_end",   null: false
    t.integer "academic_year_start", null: false
    t.integer "state_school_id"
    t.index ["state_lea_id", "state_school_id"], name: "fki_private_school_low_percentage_fkey", using: :btree
  end

  create_table "data_private_school_other_enrollment", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "state_lea_id",         null: false
    t.integer "academic_year_start",  null: false
    t.integer "academic_year_end",    null: false
    t.integer "npp"
    t.integer "nfpf"
    t.integer "spedpreschk5pp"
    t.integer "spedpreschk5fpf"
    t.integer "spedpreschnurs345pp"
    t.integer "spedpreschnurs345fpf"
    t.integer "age21pluspp"
    t.integer "age21plusfpf"
    t.integer "totaloe"
    t.integer "nrpp"
    t.integer "nrfpf"
    t.integer "rpp"
    t.integer "rfpf"
    t.integer "state_school_id",      null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_private_school_other_enrollment_pkey", using: :btree
  end

  create_table "data_private_school_percentage_low_income", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "state_lea_id",                   null: false
    t.integer "academic_year_start",            null: false
    t.integer "academic_year_end",              null: false
    t.string  "category",            limit: 20
    t.float   "nurserypercent"
    t.float   "kto12percent"
    t.integer "state_school_id",                null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_uc_private_schools_percentage_low_income_pkey", using: :btree
  end

  create_table "data_private_school_secondary_enrollment", primary_key: ["state_lea_id", "academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "state_lea_id",        null: false
    t.integer "academic_year_start", null: false
    t.integer "academic_year_end",   null: false
    t.integer "sevenspp"
    t.integer "sevensfpf"
    t.integer "eightspp"
    t.integer "eightsfpf"
    t.integer "ninepp"
    t.integer "ninefpf"
    t.integer "tenpp"
    t.integer "tenfpf"
    t.integer "elevenpp"
    t.integer "elevenfpf"
    t.integer "twelvepp"
    t.integer "twelvefpf"
    t.integer "sugpp"
    t.integer "sugfpf"
    t.integer "totalse"
    t.integer "nrpp"
    t.integer "nrfpf"
    t.integer "rpp"
    t.integer "rfpf"
    t.integer "state_school_id",     null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_private_schools_secondary_enrollment_pkey", using: :btree
  end

  create_table "data_public_lea_race_enrollment", primary_key: ["academic_year_start", "academic_year_end", "state_lea_id", "race"], force: :cascade do |t|
    t.integer "academic_year_start", null: false
    t.integer "academic_year_end",   null: false
    t.integer "state_lea_id",        null: false
    t.text    "race",                null: false
    t.integer "pka"
    t.integer "pkp"
    t.integer "pkf"
    t.integer "k4a"
    t.integer "k4p"
    t.integer "k4f"
    t.integer "k5a"
    t.integer "k5p"
    t.integer "k5f"
    t.integer "grade1"
    t.integer "grade2"
    t.integer "grade3"
    t.integer "grade4"
    t.integer "grade5"
    t.integer "grade6"
    t.integer "eug"
    t.integer "grade7"
    t.integer "grade8"
    t.integer "grade9"
    t.integer "grade10"
    t.integer "grade11"
    t.integer "grade12"
    t.integer "sug"
    t.integer "total"
    t.bigint  "nces_lea_id"
    t.index ["state_lea_id", "nces_lea_id"], name: "fki_public_lea_race_enrollment_district_exist_fkey", using: :btree
  end

  create_table "data_public_school_enrollment", primary_key: ["academic_year_start", "academic_year_end", "state_school_id"], force: :cascade do |t|
    t.integer "academic_year_start", null: false
    t.integer "academic_year_end",   null: false
    t.integer "state_school_id",     null: false
    t.integer "state_lea_id"
    t.integer "pka"
    t.integer "pkp"
    t.integer "pkf"
    t.integer "k4a"
    t.integer "k4p"
    t.integer "k4f"
    t.integer "k5a"
    t.integer "k5p"
    t.integer "k5f"
    t.integer "grade1"
    t.integer "grade2"
    t.integer "grade3"
    t.integer "grade4"
    t.integer "grade5"
    t.integer "grade6"
    t.integer "eug"
    t.integer "grade7"
    t.integer "grade8"
    t.integer "grade9"
    t.integer "grade10"
    t.integer "grade11"
    t.integer "grade12"
    t.integer "sug"
    t.integer "total"
  end

  create_table "data_public_school_gender_enrollment", primary_key: ["academic_year_start", "academic_year_end", "state_school_id", "gender"], force: :cascade do |t|
    t.integer "academic_year_start", null: false
    t.integer "academic_year_end",   null: false
    t.integer "state_school_id",     null: false
    t.integer "state_lea_id"
    t.text    "gender",              null: false
    t.integer "pka"
    t.integer "pkp"
    t.integer "pkf"
    t.integer "k4a"
    t.integer "k4p"
    t.integer "k4f"
    t.integer "k5a"
    t.integer "k5p"
    t.integer "k5f"
    t.integer "grade1"
    t.integer "grade2"
    t.integer "grade3"
    t.integer "grade4"
    t.integer "grade5"
    t.integer "grade6"
    t.integer "eug"
    t.integer "grade7"
    t.integer "grade8"
    t.integer "grade9"
    t.integer "grade10"
    t.integer "grade11"
    t.integer "grade12"
    t.integer "sug"
    t.integer "total"
  end

  create_table "data_school_facts", primary_key: ["state_lea_id", "state_school_id", "academic_year_end", "academic_year_start"], force: :cascade do |t|
    t.decimal "act_english"
    t.decimal "act_math"
    t.decimal "act_reading"
    t.decimal "act_science"
    t.decimal "americanindian_alaskan"
    t.integer "ap_courses"
    t.decimal "asian"
    t.integer "state_lea_id",                                  null: false
    t.decimal "avg_yrs_edu_exp_lea"
    t.decimal "avg_yrs_edu_exp_total"
    t.decimal "black"
    t.text    "career_tech_center_name"
    t.text    "career_tech_center_programs",                                array: true
    t.text    "career_tech_center_website"
    t.decimal "dropout_rate"
    t.decimal "econ_disadvtg"
    t.decimal "eng_lang_learner"
    t.boolean "eng_lang_lit_ap"
    t.boolean "eng_lang_lit_ib"
    t.boolean "eng_lang_lit_other"
    t.decimal "female"
    t.text    "grades_offered",                                             array: true
    t.text    "grades_pssa_keystone_prof",                                  array: true
    t.decimal "hawaiian_pacific_islander"
    t.decimal "hispanic"
    t.text    "iu_name"
    t.text    "iu_website"
    t.boolean "life_phys_sci_ap"
    t.boolean "life_phys_sci_ib"
    t.boolean "life_phys_sci_other"
    t.decimal "male"
    t.boolean "math_ap"
    t.boolean "math_ib"
    t.boolean "math_other"
    t.decimal "multiracial"
    t.decimal "pct_classes_high_qual_teachers"
    t.decimal "pct_gifted_students"
    t.text    "postsec_articulation_agreements_ins",                        array: true
    t.decimal "sat_math"
    t.decimal "sat_reading"
    t.decimal "sat_writing"
    t.boolean "scholarship_tax_credit_eligi"
    t.text    "school_add_city"
    t.string  "school_add_state",                    limit: 2
    t.text    "school_add_street"
    t.text    "school_add_zipcode"
    t.integer "school_enrollment"
    t.integer "state_school_id",                               null: false
    t.integer "academic_year_end",                             null: false
    t.integer "academic_year_start",                           null: false
    t.boolean "social_sci_his_ap"
    t.boolean "social_sci_his_ib"
    t.boolean "social_sci_his_other"
    t.decimal "special_ed"
    t.text    "telephone_no"
    t.decimal "test_participation_math_algebra"
    t.decimal "test_participation_reading_lit"
    t.decimal "test_participation_sci_bio"
    t.decimal "test_participation_writing"
    t.boolean "title_i_school"
    t.text    "website"
    t.decimal "white"
  end

  create_table "data_school_fiscal", primary_key: ["state_lea_id", "academic_year_end", "state_school_id", "academic_year_start"], force: :cascade do |t|
    t.integer "state_lea_id",                             null: false
    t.money   "fact_acq_and_const_expenditure", scale: 2
    t.money   "local_revenue",                  scale: 2
    t.money   "inst_expenditure",               scale: 2
    t.money   "cs_tuition_rate_reg_ed_student", scale: 2
    t.money   "supp_serve_expenditure",         scale: 2
    t.money   "avg_teach_sal",                  scale: 2
    t.money   "state_revenue",                  scale: 2
    t.money   "non_inst_expenditure",           scale: 2
    t.money   "finance_uses_expenditure",       scale: 2
    t.decimal "mv_pi_aid_ratio"
    t.money   "other_revenue",                  scale: 2
    t.money   "pupil_expenditure_inst",         scale: 2
    t.money   "cs_tuition_rate_spe_ed_student", scale: 2
    t.money   "gen_fund_balance",               scale: 2
    t.decimal "avg_daily_membership"
    t.money   "pupil_expenditure_total",        scale: 2
    t.money   "fed_revenue",                    scale: 2
    t.integer "academic_year_end",                        null: false
    t.integer "academic_year_start",                      null: false
    t.integer "state_school_id",                          null: false
    t.index ["state_lea_id", "state_school_id"], name: "fki_school_fiscal_fkey_exists", using: :btree
  end

  create_table "data_school_performance_measure", primary_key: ["state_lea_id", "state_school_id", "academic_year_end", "academic_year_start"], force: :cascade do |t|
    t.decimal "achievement_gap_combined_huf"
    t.decimal "advanced_placement"
    t.decimal "ap_above_3_percent"
    t.decimal "attendance_rate"
    t.decimal "attendance_rate_prior_amo"
    t.decimal "attendance_rate_reported_amo"
    t.integer "state_lea_id",                            null: false
    t.decimal "calculated_score"
    t.decimal "college_core_areas_offered"
    t.decimal "competency_assessment_percent"
    t.text    "current_sig"
    t.decimal "ela_lit_annual_growth_met"
    t.decimal "ela_lit_percent_gap_closure_met_all"
    t.decimal "ela_lit_percent_gap_closure_met_huf"
    t.text    "esea_progress"
    t.text    "federal_accountability_desig"
    t.decimal "final_academic_score"
    t.decimal "grad_rate_all_amo"
    t.decimal "grad_rate_cohort"
    t.decimal "grad_rate_cohort_4_previous"
    t.decimal "grad_rate_cohort_4_prior"
    t.decimal "grad_rate_cohort_5_previous"
    t.decimal "grad_rate_cohort_5_prior"
    t.decimal "grad_rate_cohort_6_previous"
    t.decimal "grade_12_act_above_22"
    t.decimal "grade_12_ap_above_3"
    t.decimal "grade_12_enrollment"
    t.decimal "grade_12_high_performanceindex"
    t.decimal "grade_12_on_total_percent"
    t.decimal "grade_12_plan_num"
    t.decimal "grade_12_psat_num"
    t.decimal "grade_12_psat_plan_percent"
    t.decimal "grade_12_sat_above_1550"
    t.decimal "grade_3_reading_proficiency_percent"
    t.decimal "math_algebra_all_amo"
    t.decimal "math_algebra_annual_growth_met"
    t.decimal "math_algebra_huf_amo"
    t.decimal "math_algebra_percent_gap_closure_met"
    t.decimal "math_algebra_percent_proficient"
    t.decimal "math_algebra_proficient_all"
    t.decimal "math_algebra_proficient_huf"
    t.decimal "percent_competency_assessment"
    t.decimal "profic_combined_math_reading_all"
    t.decimal "progress_math_reading_gap_closure"
    t.decimal "progress_math_reading_growth"
    t.decimal "promotion_rate_all"
    t.decimal "psat_plan_participation"
    t.decimal "pssa_percent_math_algebra"
    t.decimal "pssa_percent_reading_lit"
    t.decimal "pssa_percent_science_bio"
    t.decimal "pssa_percent_writing_advanced"
    t.decimal "reading_lit_all_amo"
    t.decimal "reading_lit_annual_growth_met"
    t.decimal "reading_lit_huf_amo"
    t.decimal "reading_lit_percent_proficient_pssa"
    t.decimal "reading_lit_percent_req_gap_closure_met"
    t.decimal "reading_lit_proficient_all"
    t.decimal "reading_lit_proficient_huf"
    t.decimal "sat_act_ready_benchmark"
    t.integer "state_school_id",                         null: false
    t.integer "academic_year_end",                       null: false
    t.integer "academic_year_start",                     null: false
    t.decimal "scibio_annual_growth_met"
    t.decimal "scibio_percent_proficient_pssa"
    t.decimal "scibio_percent_req_gap_closure_met"
    t.decimal "spp_score"
    t.decimal "test_participation_math_algebra"
    t.decimal "test_participation_reading_lit"
    t.decimal "writing_annual_growth_met"
    t.decimal "writing_percent_proficient_pssa"
    t.decimal "writing_req_gap_closure_met"
    t.index ["state_school_id", "state_lea_id"], name: "fki_school_performance_measure_fkey_exists", using: :btree
  end

  create_table "data_yearly_grad_rate", primary_key: ["state_school_id", "academic_year_start"], force: :cascade do |t|
    t.integer "state_school_id",             null: false
    t.integer "academic_year_start",         null: false
    t.integer "total_grads"
    t.float   "twofourcollege_year_percent"
    t.float   "specialized_degree_percent"
    t.float   "total_collegebound_percent"
    t.float   "total_ndg_pss_percent"
    t.float   "total_postsecondary_percent"
    t.integer "academic_year_end"
    t.integer "state_lea_id"
    t.index ["state_lea_id", "state_school_id"], name: "fki_yearly_grad_rate_fkey", using: :btree
    t.index ["state_school_id", "academic_year_start"], name: "yearlyid", unique: true, using: :btree
  end

  create_table "district", primary_key: ["nces_lea_id", "state_lea_id"], force: :cascade do |t|
    t.text    "lea_name",            null: false
    t.integer "nces_lea_id",         null: false
    t.integer "state_lea_id",        null: false
    t.text    "city"
    t.text    "urb_cen_locale_code"
    t.text    "met_mic_area_code"
    t.text    "county"
    t.integer "iu_id"
    t.text    "iu_name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.text    "stateabb"
    t.integer "fips"
  end

  create_table "django_admin_log", force: :cascade do |t|
    t.datetime "action_time",                 null: false
    t.text     "object_id"
    t.string   "object_repr",     limit: 200, null: false
    t.integer  "action_flag",     limit: 2,   null: false
    t.text     "change_message",              null: false
    t.integer  "content_type_id"
    t.integer  "user_id",                     null: false
    t.index ["content_type_id"], name: "django_admin_log_417f1b1c", using: :btree
    t.index ["user_id"], name: "django_admin_log_e8701ad4", using: :btree
  end

  create_table "django_content_type", force: :cascade do |t|
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
    t.index ["app_label", "model"], name: "django_content_type_app_label_76bd3d3b_uniq", unique: true, using: :btree
  end

  create_table "django_migrations", force: :cascade do |t|
    t.string   "app",     limit: 255, null: false
    t.string   "name",    limit: 255, null: false
    t.datetime "applied",             null: false
  end

  create_table "django_session", primary_key: "session_key", id: :string, limit: 40, force: :cascade do |t|
    t.text     "session_data", null: false
    t.datetime "expire_date",  null: false
    t.index "session_key varchar_pattern_ops", name: "django_session_session_key_c0390e0f_like", using: :btree
    t.index ["expire_date"], name: "django_session_de54fa62", using: :btree
  end

  create_table "school", primary_key: ["state_school_id", "state_lea_id"], force: :cascade do |t|
    t.text    "lea_name",        null: false
    t.text    "lea_type",        null: false
    t.integer "nces_lea_id"
    t.integer "state_lea_id",    null: false
    t.text    "county"
    t.integer "iu_id"
    t.text    "iu_name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.text    "school_name",     null: false
    t.integer "state_school_id", null: false
    t.bigint  "nces_school_id"
  end

  add_foreign_key "auth_group_permissions", "auth_group", column: "group_id", name: "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id"
  add_foreign_key "auth_group_permissions", "auth_permission", column: "permission_id", name: "auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id"
  add_foreign_key "auth_permission", "django_content_type", column: "content_type_id", name: "auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id"
  add_foreign_key "auth_user_groups", "auth_group", column: "group_id", name: "auth_user_groups_group_id_97559544_fk_auth_group_id"
  add_foreign_key "auth_user_groups", "auth_user", column: "user_id", name: "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id"
  add_foreign_key "auth_user_user_permissions", "auth_permission", column: "permission_id", name: "auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id"
  add_foreign_key "auth_user_user_permissions", "auth_user", column: "user_id", name: "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id"
  add_foreign_key "data_cova_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "cova_v11_fkey"
  add_foreign_key "data_district_facts", "district", column: "state_lea_id", primary_key: "state_lea_id", name: "district_facts_fkey"
  add_foreign_key "data_district_fiscal", "district", column: "state_lea_id", primary_key: "state_lea_id", name: "district_fiscal_fkey"
  add_foreign_key "data_exam", "school", column: "state_school_id", primary_key: "state_school_id", name: "exam_school_exist_fkey"
  add_foreign_key "data_gapa_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "gapa_v11_fkey_exists"
  add_foreign_key "data_meana_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "meana_v11_fkey_exists"
  add_foreign_key "data_meand_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "meand_v11_fkey_exists"
  add_foreign_key "data_meang_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "meang_v11_fkey_exists"
  add_foreign_key "data_meanh_v11", "district", column: "nces_lea_id", primary_key: "nces_lea_id", name: "meanh_v11_fkey_exists"
  add_foreign_key "data_multi_year_grad_rate", "school", column: "state_school_id", primary_key: "state_school_id", name: "multi_year_grad_rate_fkey"
  add_foreign_key "data_private_school_elementary_enrollment", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "private_schools_elementary_enrollment_pkey"
  add_foreign_key "data_private_school_fulltime_equivalent_teachers", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "private_schools_fulltime_equivalent_teachers_pkey"
  add_foreign_key "data_private_school_low_percentage", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "private_school_low_percentage_fkey"
  add_foreign_key "data_private_school_other_enrollment", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "private_school_other_enrollment_pkey"
  add_foreign_key "data_private_school_percentage_low_income", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "uc_private_schools_percentage_low_income_pkey"
  add_foreign_key "data_private_school_secondary_enrollment", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "private_schools_secondary_enrollment_pkey"
  add_foreign_key "data_public_lea_race_enrollment", "district", column: "state_lea_id", primary_key: "state_lea_id", name: "public_lea_race_enrollment_district_exist_fkey"
  add_foreign_key "data_public_school_enrollment", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "public_school_enrollment_fkey"
  add_foreign_key "data_public_school_gender_enrollment", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "public_school_gender_enrollment_fkey"
  add_foreign_key "data_school_facts", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "school_facts_fkey"
  add_foreign_key "data_school_fiscal", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "school_fiscal_fkey_exists"
  add_foreign_key "data_school_performance_measure", "school", column: "state_school_id", primary_key: "state_school_id", name: "school_performance_measure_fkey_exists"
  add_foreign_key "data_yearly_grad_rate", "school", column: "state_lea_id", primary_key: "state_lea_id", name: "yearly_grad_rate_fkey"
  add_foreign_key "django_admin_log", "auth_user", column: "user_id", name: "django_admin_log_user_id_c564eba6_fk_auth_user_id"
  add_foreign_key "django_admin_log", "django_content_type", column: "content_type_id", name: "django_admin_content_type_id_c4bce8eb_fk_django_content_type_id"
end
