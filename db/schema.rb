# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131221024150) do

  create_table "affiliate", force: true do |t|
    t.integer  "status",                 limit: 2,   default: 0, null: false
    t.string   "company",                limit: 100
    t.string   "website"
    t.string   "element",                limit: 10
    t.string   "area_of_activity",       limit: 50
    t.integer  "agreement_type"
    t.integer  "community_coordinator",  limit: 1,   default: 0
    t.string   "title",                  limit: 50
    t.string   "first_name",             limit: 30
    t.string   "last_name",              limit: 30
    t.string   "email_address",          limit: 128
    t.string   "address",                limit: 50
    t.string   "address2",               limit: 50
    t.string   "city",                   limit: 30
    t.string   "state",                  limit: 50
    t.string   "zip",                    limit: 20
    t.string   "country",                limit: 2
    t.string   "day_phone",              limit: 20
    t.string   "fax",                    limit: 20
    t.string   "shipping_title",         limit: 50
    t.string   "shipping_first_name",    limit: 30
    t.string   "shipping_last_name",     limit: 30
    t.string   "shipping_company",       limit: 50
    t.string   "shipping_address",       limit: 50
    t.string   "shipping_address2",      limit: 50
    t.string   "shipping_city",          limit: 30
    t.string   "shipping_state",         limit: 50
    t.string   "shipping_zip",           limit: 20
    t.string   "shipping_country",       limit: 2
    t.string   "shipping_day_phone",     limit: 20
    t.string   "shipping_home_phone",    limit: 20
    t.string   "shipping_fax",           limit: 20
    t.string   "shipping_email_address", limit: 128
    t.datetime "date_created"
    t.datetime "date_updated"
    t.text     "notes"
  end

  add_index "affiliate", ["first_name", "last_name", "id"], name: "index_first_and_last_name", using: :btree
  add_index "affiliate", ["status"], name: "status", using: :btree

  create_table "client", force: true do |t|
    t.integer  "type",               limit: 2,   default: 1, null: false
    t.integer  "status",             limit: 2,   default: 0, null: false
    t.integer  "enrolled",           limit: 1
    t.date     "date_unenrolled"
    t.string   "uci_number",         limit: 20
    t.string   "BTRS_client_number", limit: 45
    t.string   "title",              limit: 50
    t.string   "first_name",         limit: 30
    t.string   "middle_name",        limit: 50
    t.string   "last_name",          limit: 30
    t.string   "company",            limit: 50
    t.string   "email_address",      limit: 128
    t.string   "address",            limit: 50
    t.string   "address2",           limit: 50
    t.string   "city",               limit: 30
    t.string   "state",              limit: 50
    t.string   "zip",                limit: 20
    t.string   "country",            limit: 2
    t.string   "day_phone",          limit: 20
    t.string   "home_phone",         limit: 20
    t.string   "fax",                limit: 20
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  add_index "client", ["BTRS_client_number", "id"], name: "client_number", using: :btree
  add_index "client", ["first_name", "last_name", "id"], name: "index_first_and_last_name", using: :btree
  add_index "client", ["status"], name: "status", using: :btree
  add_index "client", ["type"], name: "type", using: :btree
  add_index "client", ["uci_number", "id"], name: "uci_number", using: :btree

  create_table "comment", force: true do |t|
    t.integer  "associated_record_type", default: 0, null: false
    t.integer  "associated_record_id",   default: 0, null: false
    t.text     "body"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  add_index "comment", ["associated_record_type", "associated_record_id", "id"], name: "Index_associated", using: :btree

  create_table "content", force: true do |t|
    t.string   "name",                limit: 45,       default: "", null: false
    t.string   "description",                          default: "", null: false
    t.integer  "parse_on_cache",      limit: 1,        default: 0
    t.integer  "parse_on_retrieve",   limit: 1
    t.integer  "execute_on_cache",    limit: 1
    t.integer  "execute_on_retrieve", limit: 1
    t.text     "body",                limit: 16777215
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "country", primary_key: "code", force: true do |t|
    t.string "name", limit: 50, default: "", null: false
  end

  create_table "desktop_icon", force: true do |t|
    t.integer  "user_id"
    t.integer  "type"
    t.string   "url"
    t.string   "title"
    t.string   "icon_image"
    t.integer  "window_width"
    t.integer  "window_height"
    t.integer  "icon_top"
    t.integer  "icon_left"
    t.string   "extra"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "desktop_startup", force: true do |t|
    t.integer  "user_id"
    t.integer  "type"
    t.string   "url"
    t.string   "title"
    t.string   "icon_image"
    t.integer  "window_width"
    t.integer  "window_height"
    t.integer  "icon_top"
    t.integer  "icon_left"
    t.string   "extra"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "export_answers", force: true do |t|
    t.text   "value",             null: false
    t.string "field", limit: 45,  null: false
    t.string "email", limit: 128, null: false
  end

  create_table "fe_users", primary_key: "uid", force: true do |t|
    t.integer "pid",                             default: 0,  null: false
    t.integer "tstamp",                          default: 0,  null: false
    t.string  "username",            limit: 50,  default: "", null: false
    t.string  "password",            limit: 100, default: "", null: false
    t.text    "usergroup",           limit: 255
    t.integer "disable",             limit: 1,   default: 0,  null: false
    t.integer "starttime",                       default: 0,  null: false
    t.integer "endtime",                         default: 0,  null: false
    t.string  "name",                limit: 80,  default: "", null: false
    t.string  "first_name",          limit: 50,  default: "", null: false
    t.string  "middle_name",         limit: 50,  default: "", null: false
    t.string  "last_name",           limit: 50,  default: "", null: false
    t.string  "address",                         default: "", null: false
    t.string  "telephone",           limit: 20,  default: "", null: false
    t.string  "fax",                 limit: 20,  default: "", null: false
    t.string  "email",               limit: 80,  default: "", null: false
    t.integer "crdate",                          default: 0,  null: false
    t.integer "cruser_id",                       default: 0,  null: false
    t.string  "lockToDomain",        limit: 50,  default: "", null: false
    t.integer "deleted",             limit: 1,   default: 0,  null: false
    t.binary  "uc"
    t.string  "title",               limit: 40,  default: "", null: false
    t.string  "zip",                 limit: 10,  default: "", null: false
    t.string  "city",                limit: 50,  default: "", null: false
    t.string  "country",             limit: 40,               null: false
    t.string  "www",                 limit: 80,  default: "", null: false
    t.string  "company",             limit: 80,  default: "", null: false
    t.text    "image",               limit: 255
    t.text    "TSconfig"
    t.integer "fe_cruser_id",                    default: 0,  null: false
    t.integer "lastlogin",                       default: 0,  null: false
    t.integer "is_online",                       default: 0,  null: false
    t.string  "tx_extbase_type",                 default: "", null: false
    t.text    "felogin_redirectPid", limit: 255
    t.string  "felogin_forgotHash",  limit: 80,  default: ""
  end

  add_index "fe_users", ["is_online"], name: "is_online", using: :btree
  add_index "fe_users", ["pid", "username"], name: "parent", using: :btree
  add_index "fe_users", ["username"], name: "username", using: :btree

  create_table "group", force: true do |t|
    t.integer  "status",                     limit: 2,  default: 0, null: false
    t.string   "name",                       limit: 50
    t.integer  "allowed_in_admin_interface", limit: 1
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  add_index "group", ["name"], name: "name", unique: true, using: :btree
  add_index "group", ["status"], name: "status", using: :btree

  create_table "land_project", force: true do |t|
    t.string   "name",                                      limit: 50
    t.string   "address",                                   limit: 50
    t.string   "address2",                                  limit: 50
    t.string   "country",                                   limit: 2
    t.string   "city",                                      limit: 50
    t.string   "state",                                     limit: 50
    t.string   "zip",                                       limit: 20
    t.string   "email_address",                             limit: 128
    t.string   "skype",                                     limit: 60
    t.integer  "engagement_type",                           limit: 1
    t.integer  "proposed_land_use",                         limit: 1
    t.string   "land_address",                              limit: 50
    t.string   "land_address2",                             limit: 50
    t.string   "land_country",                              limit: 2
    t.string   "land_city",                                 limit: 50
    t.string   "land_state",                                limit: 50
    t.string   "land_zip",                                  limit: 10
    t.string   "land_longitude",                            limit: 10
    t.string   "land_latitude",                             limit: 10
    t.string   "size_of_land",                              limit: 10
    t.integer  "have_pictures",                             limit: 1
    t.integer  "have_site_map",                             limit: 1
    t.integer  "have_title",                                limit: 1
    t.integer  "have_topo",                                 limit: 1
    t.string   "have_other"
    t.integer  "cbn_part_of_mized_use_development",         limit: 1
    t.integer  "cbn_project_status",                        limit: 1
    t.integer  "cbn_mou_in_place",                          limit: 1
    t.integer  "cbn_loi_in_place",                          limit: 1
    t.string   "cbn_other_agreement",                       limit: 200
    t.integer  "cbn_fee_simple_transfer",                   limit: 1
    t.text     "cbn_fee_simple_transfer_alternate"
    t.integer  "cbn_certificate_of_title_retained",         limit: 1
    t.text     "cbn_status_report"
    t.integer  "cbt_part_of_mized_use_development",         limit: 1
    t.integer  "cbt_third_party_proposal_received",         limit: 1
    t.integer  "cbt_third_party_proposal_approval",         limit: 1
    t.text     "cbt_no_proposal_text"
    t.integer  "cbt_mou_in_place",                          limit: 1
    t.string   "cbt_community_coordinator_name",            limit: 80
    t.integer  "cbt_institute_site_approved",               limit: 1
    t.integer  "cbt_fee_simple_transfer",                   limit: 1
    t.text     "cbt_fee_simple_transfer_alternate"
    t.integer  "cbt_certificate_of_title_retained",         limit: 1
    t.text     "cbt_status_report"
    t.integer  "cbt_community_coordinator_signoff",         limit: 1
    t.integer  "rbn_part_of_mized_use_development",         limit: 1
    t.integer  "rbn_project_status",                        limit: 1
    t.integer  "rbn_mou_in_place",                          limit: 1
    t.integer  "rbn_partnership_agreement_in_place",        limit: 1
    t.integer  "rbn_design_charette_undertaken",            limit: 1
    t.integer  "rbn_site_visit_report_completed",           limit: 1
    t.integer  "rbn_presentation_in_place",                 limit: 1
    t.integer  "rbn_finance_arrangements_in_place",         limit: 1
    t.integer  "rbn_local_organization_formed",             limit: 1
    t.integer  "rbn_pdw_conservation_plan",                 limit: 1
    t.integer  "rbn_pdw_permaculture_plan",                 limit: 1
    t.integer  "rbn_pdw_design_master_plan",                limit: 1
    t.integer  "rbn_pdw_construction_drawings",             limit: 1
    t.integer  "rbn_pdw_construction_plan",                 limit: 1
    t.string   "rbn_pdw_other"
    t.integer  "rbn_donated_land_received",                 limit: 1
    t.date     "rbn_donated_land_anticipated_date"
    t.integer  "rbn_fee_simple_transfer",                   limit: 1
    t.date     "rbn_fee_simple_transfer_anticipated_date"
    t.text     "rbn_fee_simple_transfer_alternate"
    t.integer  "rbn_certificate_of_title_transfered",       limit: 1
    t.date     "rbn_certificate_of_title_anticipated_date"
    t.text     "rbn_certificate_of_title_alternate"
    t.text     "rbn_status_report"
    t.integer  "rbt_part_of_mized_use_development",         limit: 1
    t.integer  "rbt_third_party_proposal_received",         limit: 1
    t.integer  "rbt_third_party_proposal_approval",         limit: 1
    t.text     "rbt_no_proposal_text"
    t.integer  "rbt_mou_in_place",                          limit: 1
    t.string   "rbt_retreat_coordinator_name",              limit: 80
    t.integer  "rbt_fee_simple_transfer",                   limit: 1
    t.date     "rbt_fee_simple_transfer_anticipated_date"
    t.text     "rbt_fee_simple_transfer_alternate"
    t.integer  "rbt_certificate_of_title_retained",         limit: 1
    t.text     "rbt_status_report"
    t.integer  "rbt_community_coordinator_signoff",         limit: 1
    t.integer  "ec_details_received",                       limit: 1
    t.integer  "ec_community_inclusion_approved",           limit: 1
    t.text     "ec_community_inclusion_denied_text"
    t.integer  "ec_mou_in_place",                           limit: 1
    t.string   "ec_community_coordinator_name",             limit: 80
    t.integer  "ec_institute_site_approved",                limit: 1
    t.integer  "ec_fee_simple_transfer",                    limit: 1
    t.date     "ec_fee_simple_transfer_anticipated_date"
    t.text     "ec_fee_simple_transfer_alternate"
    t.integer  "ec_certificate_of_title_retained",          limit: 1
    t.text     "ec_status_report"
    t.integer  "ec_community_coordinator_signoff",          limit: 1
    t.integer  "er_details_received",                       limit: 1
    t.integer  "er_community_inclusion_approved",           limit: 1
    t.text     "er_community_inclusion_denied_text"
    t.integer  "er_mou_in_place",                           limit: 1
    t.string   "er_community_coordinator_name",             limit: 80
    t.integer  "er_fee_simple_transfer",                    limit: 1
    t.date     "er_fee_simple_transfer_anticipated_date"
    t.text     "er_fee_simple_transfer_alternate"
    t.integer  "er_certificate_of_title_retained",          limit: 1
    t.text     "er_status_report"
    t.integer  "er_community_coordinator_signoff",          limit: 1
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "member", force: true do |t|
    t.integer  "status",                 limit: 2,   default: 0,  null: false
    t.string   "title",                  limit: 50
    t.string   "first_name",             limit: 30
    t.string   "middle_name",            limit: 30
    t.string   "last_name",              limit: 30
    t.string   "company",                limit: 50
    t.string   "email",                  limit: 128
    t.string   "email_address_2",        limit: 128
    t.string   "address",                limit: 50
    t.string   "address2",               limit: 50
    t.string   "city",                   limit: 30
    t.string   "state",                  limit: 50
    t.string   "zip",                    limit: 20
    t.string   "country",                limit: 2
    t.string   "day_phone",              limit: 20
    t.string   "home_phone",             limit: 20
    t.integer  "timezone_id"
    t.string   "fax",                    limit: 20
    t.string   "skype",                  limit: 50
    t.string   "facebook",               limit: 50
    t.text     "bio"
    t.text     "skills"
    t.text     "interests"
    t.integer  "community_coordinator",  limit: 1
    t.date     "date_joined"
    t.date     "date_suspended"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "given_name"
    t.string   "legal_name"
    t.string   "birth_country",          limit: 2
    t.datetime "made_declaration_at"
  end

  add_index "member", ["confirmation_token"], name: "index_member_on_confirmation_token", unique: true, using: :btree
  add_index "member", ["email"], name: "index_member_on_email", using: :btree
  add_index "member", ["first_name", "last_name", "id"], name: "index_first_and_last_name", using: :btree
  add_index "member", ["reset_password_token"], name: "index_member_on_reset_password_token", unique: true, using: :btree
  add_index "member", ["status"], name: "status", using: :btree

  create_table "member_account", force: true do |t|
    t.integer  "member_id",                                                          null: false
    t.integer  "status",             limit: 1
    t.integer  "type",                                                   default: 0, null: false
    t.string   "description",        limit: 80
    t.decimal  "current_balance",               precision: 10, scale: 2
    t.datetime "date_opened"
    t.datetime "date_closed"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  create_table "member_account_transaction", force: true do |t|
    t.integer  "member_account_id",                                      default: 0, null: false
    t.integer  "type",                                                   default: 0, null: false
    t.integer  "other_branch_id",                                        default: 0, null: false
    t.integer  "other_account_id",                                       default: 0, null: false
    t.string   "description",        limit: 80
    t.datetime "date_posted"
    t.decimal  "amount",                        precision: 10, scale: 2
    t.decimal  "balance",                       precision: 10, scale: 2
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  create_table "member_category", force: true do |t|
    t.integer "parent_id"
    t.string  "name",       limit: 50
    t.integer "sort_order"
    t.string  "full_path"
    t.integer "type",       limit: 1
    t.text    "content"
  end

  create_table "member_category_match", id: false, force: true do |t|
    t.integer "member_id",          default: 0, null: false
    t.integer "member_category_id", default: 0, null: false
  end

  create_table "member_new", force: true do |t|
    t.integer  "status",                limit: 2,   default: 0, null: false
    t.string   "title",                 limit: 50
    t.string   "first_name",            limit: 30
    t.string   "middle_name",           limit: 30
    t.string   "last_name",             limit: 30
    t.string   "company",               limit: 50
    t.string   "email_address",         limit: 128
    t.string   "email_address_2",       limit: 128
    t.string   "address",               limit: 50
    t.string   "address2",              limit: 50
    t.string   "city",                  limit: 30
    t.string   "state",                 limit: 50
    t.string   "zip",                   limit: 20
    t.string   "country",               limit: 2
    t.string   "day_phone",             limit: 20
    t.string   "home_phone",            limit: 20
    t.string   "fax",                   limit: 20
    t.string   "skype",                 limit: 50
    t.string   "facebook",              limit: 50
    t.text     "bio"
    t.text     "skills"
    t.text     "interests"
    t.integer  "community_coordinator", limit: 1
    t.date     "date_joined"
    t.date     "date_suspended"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  add_index "member_new", ["first_name", "last_name", "id"], name: "index_first_and_last_name", using: :btree
  add_index "member_new", ["status"], name: "status", using: :btree

  create_table "nicknames", force: true do |t|
    t.string "names"
  end

  create_table "note", force: true do |t|
    t.string   "title",        limit: 128, default: "", null: false
    t.integer  "encrypted",    limit: 1,   default: 0
    t.text     "notes"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "page", force: true do |t|
    t.integer  "status",                  limit: 2,        default: 0, null: false
    t.integer  "requires_login",          limit: 1
    t.integer  "requires_ssl",            limit: 1
    t.integer  "groups_allowed_from",     limit: 1
    t.string   "groups_allowed",          limit: 50
    t.string   "name",                    limit: 50
    t.integer  "version"
    t.integer  "path_id"
    t.integer  "show_in_section_menu",    limit: 1
    t.integer  "section_menu_sort_order"
    t.string   "section_menu_link_text",  limit: 128
    t.integer  "page_template_id"
    t.integer  "publish_type"
    t.string   "template",                limit: 50
    t.string   "page_title"
    t.string   "file_name",               limit: 50
    t.integer  "hide_from_site_search",   limit: 1
    t.text     "search_description"
    t.text     "primary_content",         limit: 16777215
    t.text     "code_top",                                             null: false
    t.text     "html_top",                                             null: false
    t.text     "code_bottom",                                          null: false
    t.text     "html_bottom",                                          null: false
    t.text     "template_html",           limit: 16777215
    t.text     "properties"
    t.integer  "show_on_desktop",         limit: 1
    t.integer  "open_on_startup",         limit: 1
    t.datetime "date_created"
    t.datetime "date_updated"
    t.string   "icon_file_name",          limit: 50
    t.integer  "window_width"
    t.integer  "window_height"
    t.string   "link_extra"
  end

  add_index "page", ["file_name"], name: "file_name", using: :btree
  add_index "page", ["name"], name: "name", using: :btree

  create_table "page_template", force: true do |t|
    t.string   "name",         limit: 45, null: false
    t.text     "code_top"
    t.text     "html_top"
    t.text     "code_bottom"
    t.text     "html_bottom"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "path", force: true do |t|
    t.integer  "status",           limit: 2,   default: 0, null: false
    t.integer  "requires_login",   limit: 1
    t.integer  "requires_ssl",     limit: 1
    t.string   "groups_allowed",   limit: 50
    t.integer  "show_as_section",  limit: 1
    t.string   "section",          limit: 50
    t.string   "path",             limit: 128
    t.string   "title",            limit: 50
    t.integer  "page_template_id"
    t.string   "template",         limit: 50
    t.integer  "sort_order"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.text     "code_top"
    t.text     "code_bottom"
    t.text     "html_top"
    t.text     "html_bottom"
  end

  create_table "payroll_batch", force: true do |t|
    t.datetime "date_processed"
    t.integer  "processed_by_user_id"
  end

  create_table "project", force: true do |t|
    t.integer  "type",         limit: 1,   default: 0
    t.integer  "status",       limit: 1,   default: 0, null: false
    t.string   "priority",     limit: 10
    t.string   "name",         limit: 128
    t.text     "notes"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "project_note", force: true do |t|
    t.integer  "project_id",               default: 0,  null: false
    t.string   "title",        limit: 128, default: "", null: false
    t.text     "notes"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "project_task", force: true do |t|
    t.integer  "project_id",                            default: 0,  null: false
    t.string   "title",                     limit: 128, default: "", null: false
    t.integer  "type"
    t.integer  "status",                    limit: 1
    t.string   "priority",                  limit: 10
    t.integer  "primary_responsibility_id"
    t.integer  "percent_complete",          limit: 1,   default: 0
    t.float    "estimated_hours"
    t.text     "notes"
    t.text     "to_do"
    t.text     "to_discuss"
    t.text     "changes"
    t.date     "date_needed"
    t.date     "date_completed"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "queries", force: true do |t|
    t.string   "title",        limit: 64, default: "", null: false
    t.text     "query",                                null: false
    t.datetime "date_created"
  end

  create_table "record_archive", force: true do |t|
    t.string   "table",        limit: 45,         null: false
    t.string   "primary_key",                     null: false
    t.integer  "user_id"
    t.text     "data",         limit: 2147483647, null: false
    t.datetime "date_created",                    null: false
  end

  add_index "record_archive", ["primary_key", "id"], name: "Index_primary_key", using: :btree

  create_table "session", primary_key: "record_id", force: true do |t|
    t.string   "id",                limit: 128, default: "", null: false
    t.integer  "user_id",                       default: 0,  null: false
    t.integer  "guest_id",                      default: 0,  null: false
    t.integer  "status",            limit: 1,   default: 0,  null: false
    t.integer  "user_type",         limit: 1,   default: 0,  null: false
    t.datetime "date_created"
    t.integer  "first_used"
    t.integer  "last_used"
    t.integer  "hits"
    t.text     "extra_data"
    t.integer  "company_id",                    default: 0,  null: false
    t.string   "referrer"
    t.string   "user_agent"
    t.string   "current_url_title"
    t.string   "current_url"
    t.integer  "ad_id"
    t.string   "link_source"
    t.string   "ip_address",        limit: 45
    t.integer  "site_id",           limit: 1,   default: 0,  null: false
  end

  add_index "session", ["company_id"], name: "company_id", using: :btree
  add_index "session", ["id"], name: "id", unique: true, using: :btree
  add_index "session", ["status"], name: "status", using: :btree
  add_index "session", ["user_id"], name: "users_id", using: :btree

  create_table "session_log", force: true do |t|
    t.integer "session_record_id",           default: 0, null: false
    t.integer "timestamp",                   default: 0, null: false
    t.integer "activity",          limit: 2, default: 0, null: false
    t.string  "description"
  end

  add_index "session_log", ["activity"], name: "session_log_activity", using: :btree
  add_index "session_log", ["session_record_id", "timestamp"], name: "session_log_session_id_timstamp", using: :btree

  create_table "site_template", force: true do |t|
    t.string   "name",         limit: 50, null: false
    t.string   "description",             null: false
    t.text     "body",                    null: false
    t.text     "html_top"
    t.text     "html_bottom"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  create_table "state", force: true do |t|
    t.string   "code",         limit: 2,  default: "", null: false
    t.string   "country_code", limit: 2,  default: "", null: false
    t.string   "name",         limit: 50, default: "", null: false
    t.datetime "date_created"
    t.datetime "date_updated"
    t.float    "sales_tax"
  end

  create_table "team", force: true do |t|
    t.integer  "status",       limit: 2,  default: 0, null: false
    t.string   "name",         limit: 50
    t.integer  "lead_user_id"
    t.datetime "date_created"
    t.datetime "date_updated"
  end

  add_index "team", ["name"], name: "name", unique: true, using: :btree
  add_index "team", ["status"], name: "status", using: :btree

  create_table "team_comment", force: true do |t|
    t.integer  "team_id",            default: 0, null: false
    t.text     "body"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
  end

  add_index "team_comment", ["team_id", "id"], name: "Index_team", using: :btree

  create_table "time_entry", force: true do |t|
    t.integer  "time_header_id",                                              null: false
    t.integer  "contract_job_id"
    t.integer  "employee_assignment_id"
    t.integer  "status",                            limit: 1
    t.date     "date_of_service",                                             null: false
    t.time     "start_time"
    t.time     "end_time"
    t.float    "hours",                                         default: 0.0
    t.float    "hours_to_quarter_hour"
    t.float    "hours_calculated",                              default: 0.0
    t.string   "description",                       limit: 128
    t.integer  "miles",                             limit: 1
    t.integer  "reviewed_by_id"
    t.datetime "reviewed_date"
    t.integer  "approved_by_id"
    t.datetime "approved_date"
    t.datetime "date_paid"
    t.datetime "date_invoiced"
    t.float    "actual_hours_paid"
    t.float    "actual_rate_paid"
    t.float    "unit_bill_rate"
    t.string   "invoice_number",                    limit: 45
    t.date     "date_remitted_by_regional_center"
    t.float    "total_remitted_by_regional_center"
    t.string   "regional_center_remittance_number", limit: 45
    t.integer  "denied_by_regional_center",         limit: 1,   default: 0
    t.datetime "date_created"
    t.integer  "created_by_user_id"
    t.datetime "date_updated"
    t.integer  "updated_by_user_id"
    t.integer  "import_source"
    t.string   "import_flags",                      limit: 45
    t.integer  "billable",                          limit: 1,   default: 1
    t.integer  "closed",                            limit: 1
    t.integer  "payroll_batch_id"
  end

  add_index "time_entry", ["contract_job_id", "status", "time_header_id", "id"], name: "Index_contract", using: :btree
  add_index "time_entry", ["date_of_service", "denied_by_regional_center", "time_header_id", "id"], name: "Index_date", using: :btree
  add_index "time_entry", ["import_source", "id"], name: "Index_import_source", using: :btree
  add_index "time_entry", ["payroll_batch_id", "time_header_id", "id"], name: "Index_payroll_batch_time_header", using: :btree
  add_index "time_entry", ["status", "contract_job_id", "date_of_service", "hours", "id"], name: "Index_status_contract", using: :btree
  add_index "time_entry", ["time_header_id", "contract_job_id", "id"], name: "Index_time_header", using: :btree

  create_table "time_entry_billing", force: true do |t|
    t.integer "billing_batch_id"
    t.integer "time_entry_id"
    t.float   "hours"
  end

  add_index "time_entry_billing", ["billing_batch_id", "hours", "id"], name: "billing_batch_id", using: :btree
  add_index "time_entry_billing", ["time_entry_id", "hours", "id"], name: "time_entry_id", using: :btree

  create_table "time_entry_conflict", id: false, force: true do |t|
    t.integer "type_code",     default: 0, null: false
    t.integer "time_entry_id", default: 0, null: false
    t.integer "detail_id",     default: 0, null: false
    t.integer "status"
  end

  add_index "time_entry_conflict", ["status", "detail_id", "time_entry_id"], name: "Index_status", using: :btree

  create_table "time_entry_conflict_type", primary_key: "code", force: true do |t|
    t.string "description", limit: 50, null: false
  end

  create_table "time_header", force: true do |t|
    t.integer  "member_id"
    t.integer  "client_id"
    t.integer  "time_batch_id"
    t.integer  "signed_by_employee",       limit: 1,  default: 0
    t.integer  "signed_by_authorized_rep", limit: 1,  default: 0
    t.integer  "legible",                  limit: 1,  default: 0
    t.date     "start_date"
    t.integer  "receipt_method"
    t.float    "total_hours_manual"
    t.string   "original_file_name",       limit: 50
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "created_by_user_id"
    t.integer  "updated_by_user_id"
    t.integer  "import_source"
  end

  add_index "time_header", ["id", "member_id", "client_id"], name: "Index_id_employee", using: :btree
  add_index "time_header", ["import_source", "id"], name: "Index_import_source", using: :btree
  add_index "time_header", ["member_id", "client_id", "id"], name: "Index_employee", using: :btree
  add_index "time_header", ["time_batch_id", "id"], name: "Index_time_batch", using: :btree

  create_table "timezone", force: true do |t|
    t.string  "gmt_adjustment",    limit: 10
    t.integer "use_daylight_time", limit: 1
    t.float   "value"
    t.string  "description",       limit: 80
  end

  create_table "tx_powermail_domain_model_answers", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "mail",                              default: 0,  null: false
    t.text    "value",                                          null: false
    t.integer "field",                             default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_powermail_domain_model_answers", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_powermail_domain_model_answers", ["pid"], name: "parent", using: :btree
  add_index "tx_powermail_domain_model_answers", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree
  add_index "tx_powermail_domain_model_answers", ["value", "field"], name: "Index_5", length: {"value"=>255, "field"=>nil}, using: :btree

  create_table "tx_powermail_domain_model_answers_original", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "mail",                              default: 0,  null: false
    t.text    "value",                                          null: false
    t.integer "field",                             default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_powermail_domain_model_answers_original", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_powermail_domain_model_answers_original", ["pid"], name: "parent", using: :btree
  add_index "tx_powermail_domain_model_answers_original", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree
  add_index "tx_powermail_domain_model_answers_original", ["value", "field"], name: "Index_5", length: {"value"=>255, "field"=>nil}, using: :btree

  create_table "tx_powermail_domain_model_fields", primary_key: "uid", force: true do |t|
    t.integer "pid",                                default: 0,  null: false
    t.integer "pages",                              default: 0,  null: false
    t.string  "title",                              default: "", null: false
    t.string  "type",                               default: "", null: false
    t.text    "settings",                                        null: false
    t.string  "path",                               default: "", null: false
    t.integer "content_element",                    default: 0,  null: false
    t.text    "text",                                            null: false
    t.string  "prefill_value",                      default: "", null: false
    t.integer "validation",                         default: 0,  null: false
    t.string  "css",                                default: "", null: false
    t.string  "feuser_value",                       default: "", null: false
    t.integer "sender_email",      limit: 1,        default: 0,  null: false
    t.integer "sender_name",       limit: 1,        default: 0,  null: false
    t.integer "mandatory",         limit: 1,        default: 0,  null: false
    t.integer "own_marker_select", limit: 1,        default: 0,  null: false
    t.string  "marker",                             default: "", null: false
    t.integer "validation_title",  limit: 1,        default: 0,  null: false
    t.integer "prefill_title",     limit: 1,        default: 0,  null: false
    t.integer "marker_title",      limit: 1,        default: 0,  null: false
    t.integer "auto_marker",       limit: 1,        default: 0,  null: false
    t.integer "tstamp",                             default: 0,  null: false
    t.integer "crdate",                             default: 0,  null: false
    t.integer "cruser_id",                          default: 0,  null: false
    t.integer "deleted",           limit: 1,        default: 0,  null: false
    t.integer "hidden",            limit: 1,        default: 0,  null: false
    t.integer "starttime",                          default: 0,  null: false
    t.integer "endtime",                            default: 0,  null: false
    t.integer "sorting",                            default: 0,  null: false
    t.integer "t3ver_oid",                          default: 0,  null: false
    t.integer "t3ver_id",                           default: 0,  null: false
    t.integer "t3ver_wsid",                         default: 0,  null: false
    t.string  "t3ver_label",                        default: "", null: false
    t.integer "t3ver_state",       limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                        default: 0,  null: false
    t.integer "t3ver_count",                        default: 0,  null: false
    t.integer "t3ver_tstamp",                       default: 0,  null: false
    t.integer "t3ver_move_id",                      default: 0,  null: false
    t.integer "t3_origuid",                         default: 0,  null: false
    t.integer "sys_language_uid",                   default: 0,  null: false
    t.integer "l10n_parent",                        default: 0,  null: false
    t.binary  "l10n_diffsource",   limit: 16777215
  end

  add_index "tx_powermail_domain_model_fields", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_powermail_domain_model_fields", ["pid"], name: "parent", using: :btree
  add_index "tx_powermail_domain_model_fields", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_powermail_domain_model_mails", primary_key: "uid", force: true do |t|
    t.integer "pid",                                            default: 0,  null: false
    t.string  "sender_name",                                    default: "", null: false
    t.string  "sender_mail",                                    default: "", null: false
    t.string  "subject",                                        default: "", null: false
    t.string  "receiver_mail",                                  default: "", null: false
    t.text    "body",                                                        null: false
    t.integer "feuser",                                         default: 0,  null: false
    t.text    "sender_ip",                     limit: 255,                   null: false
    t.text    "user_agent",                                                  null: false
    t.integer "time",                                           default: 0,  null: false
    t.integer "form",                                           default: 0,  null: false
    t.integer "answers",                                        default: 0,  null: false
    t.text    "marketing_searchterm",                                        null: false
    t.text    "marketing_referer",                                           null: false
    t.integer "marketing_payed_search_result", limit: 1,        default: 0,  null: false
    t.integer "marketing_language",                             default: 0,  null: false
    t.text    "marketing_browser_language",                                  null: false
    t.text    "marketing_funnel",                                            null: false
    t.string  "spam_factor",                                    default: "", null: false
    t.integer "tstamp",                                         default: 0,  null: false
    t.integer "crdate",                                         default: 0,  null: false
    t.integer "cruser_id",                                      default: 0,  null: false
    t.integer "deleted",                       limit: 1,        default: 0,  null: false
    t.integer "hidden",                        limit: 1,        default: 0,  null: false
    t.integer "starttime",                                      default: 0,  null: false
    t.integer "endtime",                                        default: 0,  null: false
    t.integer "t3ver_oid",                                      default: 0,  null: false
    t.integer "t3ver_id",                                       default: 0,  null: false
    t.integer "t3ver_wsid",                                     default: 0,  null: false
    t.string  "t3ver_label",                                    default: "", null: false
    t.integer "t3ver_state",                   limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                                    default: 0,  null: false
    t.integer "t3ver_count",                                    default: 0,  null: false
    t.integer "t3ver_tstamp",                                   default: 0,  null: false
    t.integer "t3ver_move_id",                                  default: 0,  null: false
    t.integer "t3_origuid",                                     default: 0,  null: false
    t.integer "sys_language_uid",                               default: 0,  null: false
    t.integer "l10n_parent",                                    default: 0,  null: false
    t.binary  "l10n_diffsource",               limit: 16777215
  end

  add_index "tx_powermail_domain_model_mails", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_powermail_domain_model_mails", ["pid"], name: "parent", using: :btree
  add_index "tx_powermail_domain_model_mails", ["sender_mail", "sender_name", "uid"], name: "INdex_5", length: {"sender_mail"=>128, "sender_name"=>128, "uid"=>nil}, using: :btree
  add_index "tx_powermail_domain_model_mails", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_powermail_domain_model_mails_original", primary_key: "uid", force: true do |t|
    t.integer "pid",                                            default: 0,  null: false
    t.string  "sender_name",                                    default: "", null: false
    t.string  "sender_mail",                                    default: "", null: false
    t.string  "subject",                                        default: "", null: false
    t.string  "receiver_mail",                                  default: "", null: false
    t.text    "body",                                                        null: false
    t.integer "feuser",                                         default: 0,  null: false
    t.text    "sender_ip",                     limit: 255,                   null: false
    t.text    "user_agent",                                                  null: false
    t.integer "time",                                           default: 0,  null: false
    t.integer "form",                                           default: 0,  null: false
    t.integer "answers",                                        default: 0,  null: false
    t.text    "marketing_searchterm",                                        null: false
    t.text    "marketing_referer",                                           null: false
    t.integer "marketing_payed_search_result", limit: 1,        default: 0,  null: false
    t.integer "marketing_language",                             default: 0,  null: false
    t.text    "marketing_browser_language",                                  null: false
    t.text    "marketing_funnel",                                            null: false
    t.string  "spam_factor",                                    default: "", null: false
    t.integer "tstamp",                                         default: 0,  null: false
    t.integer "crdate",                                         default: 0,  null: false
    t.integer "cruser_id",                                      default: 0,  null: false
    t.integer "deleted",                       limit: 1,        default: 0,  null: false
    t.integer "hidden",                        limit: 1,        default: 0,  null: false
    t.integer "starttime",                                      default: 0,  null: false
    t.integer "endtime",                                        default: 0,  null: false
    t.integer "t3ver_oid",                                      default: 0,  null: false
    t.integer "t3ver_id",                                       default: 0,  null: false
    t.integer "t3ver_wsid",                                     default: 0,  null: false
    t.string  "t3ver_label",                                    default: "", null: false
    t.integer "t3ver_state",                   limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                                    default: 0,  null: false
    t.integer "t3ver_count",                                    default: 0,  null: false
    t.integer "t3ver_tstamp",                                   default: 0,  null: false
    t.integer "t3ver_move_id",                                  default: 0,  null: false
    t.integer "t3_origuid",                                     default: 0,  null: false
    t.integer "sys_language_uid",                               default: 0,  null: false
    t.integer "l10n_parent",                                    default: 0,  null: false
    t.binary  "l10n_diffsource",               limit: 16777215
  end

  add_index "tx_powermail_domain_model_mails_original", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_powermail_domain_model_mails_original", ["pid"], name: "parent", using: :btree
  add_index "tx_powermail_domain_model_mails_original", ["sender_mail", "sender_name", "uid"], name: "Index_5", length: {"sender_mail"=>128, "sender_name"=>128, "uid"=>nil}, using: :btree
  add_index "tx_powermail_domain_model_mails_original", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "user", force: true do |t|
    t.integer  "type",                   limit: 2,        default: 1, null: false
    t.integer  "status",                 limit: 2,        default: 0, null: false
    t.integer  "member_id"
    t.string   "username",               limit: 20
    t.binary   "password",               limit: 16777215
    t.integer  "visits",                                  default: 0, null: false
    t.string   "gender",                 limit: 1
    t.string   "title",                  limit: 50
    t.string   "first_name",             limit: 30
    t.string   "last_name",              limit: 30
    t.string   "company",                limit: 50
    t.string   "email_address",          limit: 128
    t.string   "address",                limit: 50
    t.string   "address2",               limit: 50
    t.string   "city",                   limit: 30
    t.string   "state",                  limit: 50
    t.string   "zip",                    limit: 20
    t.string   "country",                limit: 2
    t.integer  "timezone_id"
    t.string   "day_phone",              limit: 20
    t.string   "home_phone",             limit: 20
    t.string   "fax",                    limit: 20
    t.string   "skype",                  limit: 50
    t.string   "shipping_title",         limit: 50
    t.string   "shipping_first_name",    limit: 30
    t.string   "shipping_last_name",     limit: 30
    t.string   "shipping_company",       limit: 50
    t.string   "shipping_address",       limit: 50
    t.string   "shipping_address2",      limit: 50
    t.string   "shipping_city",          limit: 30
    t.string   "shipping_state",         limit: 50
    t.string   "shipping_zip",           limit: 20
    t.string   "shipping_country",       limit: 2
    t.string   "shipping_day_phone",     limit: 20
    t.string   "shipping_home_phone",    limit: 20
    t.string   "shipping_fax",           limit: 20
    t.string   "shipping_email_address", limit: 128
    t.datetime "date_created"
    t.datetime "date_updated"
    t.text     "notes"
    t.integer  "verified",               limit: 1
    t.integer  "imported",               limit: 1
  end

  add_index "user", ["first_name", "last_name", "id"], name: "index_first_and_last_name", using: :btree
  add_index "user", ["status"], name: "status", using: :btree
  add_index "user", ["type"], name: "type", using: :btree
  add_index "user", ["username"], name: "username", unique: true, using: :btree

  create_table "user_group_match", id: false, force: true do |t|
    t.integer "user_id",  default: 0, null: false
    t.integer "group_id", default: 0, null: false
  end

  create_table "user_prefs", force: true do |t|
    t.integer "user_id",                       default: 0, null: false
    t.integer "main_menu_minimized", limit: 1
    t.integer "main_menu_width"
  end

  create_table "user_team_match", id: false, force: true do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "team_id", default: 0, null: false
  end

  create_table "value", force: true do |t|
    t.string  "name",        limit: 128, default: "", null: false
    t.string  "value",                   default: "", null: false
    t.string  "description",             default: "", null: false
    t.integer "order_by",                default: 0,  null: false
    t.string  "valuecol",    limit: 45
  end

  add_index "value", ["name", "value"], name: "Index_name", length: {"name"=>nil, "value"=>20}, using: :btree

end
