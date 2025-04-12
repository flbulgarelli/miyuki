# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_07_213745) do
  create_table "assignments", force: :cascade do |t|
    t.text "solution"
    t.integer "exercise_id"
    t.integer "submission_status", default: 0
    t.text "result"
    t.integer "submitter_id"
    t.text "expectation_results"
    t.text "feedback"
    t.text "test_results"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "submissions_count", default: 0, null: false
    t.string "submission_id"
    t.string "queries"
    t.text "query_results"
    t.text "manual_evaluation_comment"
    t.integer "attemps_count", default: 0
    t.integer "organization_id"
    t.datetime "submitted_at", precision: nil
    t.integer "parent_id"
    t.integer "top_submission_status"
    t.boolean "misplaced"
    t.index ["exercise_id"], name: "index_assignments_on_exercise_id"
    t.index ["organization_id"], name: "index_assignments_on_organization_id"
    t.index ["parent_id"], name: "index_assignments_on_parent_id"
    t.index ["submission_id"], name: "index_assignments_on_submission_id"
    t.index ["submitter_id"], name: "index_assignments_on_submitter_id"
  end

  create_table "avatars", force: :cascade do |t|
    t.string "image_url"
    t.string "description"
    t.integer "target_audience", default: 0
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "locale", default: "en"
    t.text "description"
    t.string "slug"
    t.boolean "private", default: false
    t.index ["slug"], name: "index_books_on_slug", unique: true
  end

  create_table "chapters", force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "number", default: 0, null: false
    t.integer "book_id"
    t.integer "topic_id"
  end

  create_table "complements", force: :cascade do |t|
    t.integer "guide_id"
    t.integer "book_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["book_id"], name: "index_complements_on_book_id"
    t.index ["guide_id"], name: "index_complements_on_guide_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "test"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "language_id", default: 0
    t.integer "submissions_count"
    t.integer "guide_id"
    t.string "locale", default: "en"
    t.text "hint"
    t.text "extra"
    t.integer "number"
    t.text "corollary"
    t.integer "layout", default: 0, null: false
    t.text "expectations"
    t.string "type", default: "Problem", null: false
    t.text "tag_list"
    t.text "default_content"
    t.integer "bibliotheca_id", null: false
    t.boolean "extra_visible", default: false
    t.boolean "manual_evaluation", default: false
    t.integer "editor", default: 0, null: false
    t.text "goal"
    t.string "initial_state"
    t.string "final_state"
    t.text "assistance_rules"
    t.text "randomizations"
    t.text "free_form_editor_source"
    t.text "teacher_info"
    t.text "choices"
    t.text "settings"
    t.text "custom_expectations"
    t.index ["guide_id"], name: "index_exercises_on_guide_id"
    t.index ["language_id"], name: "index_exercises_on_language_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "description"
    t.string "locale", default: "en"
    t.integer "language_id"
    t.text "extra"
    t.text "corollary"
    t.boolean "beta", default: false
    t.text "expectations"
    t.string "slug", default: "", null: false
    t.integer "type", default: 0, null: false
    t.text "authors"
    t.text "collaborators"
    t.string "id_format", default: "%05d"
    t.boolean "private", default: false
    t.text "teacher_info"
    t.text "sources"
    t.text "learn_more"
    t.text "settings"
    t.text "custom_expectations"
    t.index ["name"], name: "index_guides_on_name"
    t.index ["slug"], name: "index_guides_on_slug", unique: true
  end

  create_table "indicators", force: :cascade do |t|
    t.integer "user_id"
    t.integer "organization_id"
    t.integer "parent_id"
    t.string "content_type"
    t.integer "content_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "dirty_by_content_change", default: false
    t.boolean "dirty_by_submission", default: false
    t.integer "children_passed_count"
    t.integer "children_count"
    t.boolean "once_completed"
    t.index ["content_type", "content_id"], name: "index_indicators_on_content_type_and_content_id"
    t.index ["organization_id"], name: "index_indicators_on_organization_id"
    t.index ["parent_id"], name: "index_indicators_on_parent_id"
    t.index ["user_id"], name: "index_indicators_on_user_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "runner_url"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "visible_success_output", default: false
    t.integer "output_content_type", default: 0
    t.string "highlight_mode"
    t.text "description"
    t.boolean "queriable", default: false
    t.string "prompt"
    t.boolean "stateful_console", default: false
    t.string "extension", default: "", null: false
    t.boolean "triable", default: false
    t.string "devicon"
    t.string "comment_type", default: "cpp"
    t.string "layout_js_urls"
    t.string "layout_css_urls"
    t.string "layout_html_urls"
    t.string "editor_js_urls"
    t.string "editor_html_urls"
    t.string "editor_css_urls"
    t.string "test_extension"
    t.text "test_template"
    t.boolean "feedback"
    t.boolean "multifile", default: false
    t.boolean "layout_shows_loading_content"
    t.boolean "editor_shows_loading_content"
    t.boolean "settings", default: false
    t.boolean "expectations"
    t.index ["name"], name: "index_languages_on_name", unique: true
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "guide_id"
    t.integer "number"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "topic_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "settings", default: "{}", null: false
    t.text "theme", default: "{}", null: false
    t.text "profile", default: "{}", null: false
    t.integer "progressive_display_lookahead"
    t.integer "target_audience", default: 0
    t.boolean "incognito_mode_enabled"
    t.text "display_name"
    t.text "display_description"
    t.boolean "wins_page"
    t.boolean "immersible"
    t.boolean "prevent_manual_evaluation_content"
    t.text "faqs"
    t.index ["book_id"], name: "index_organizations_on_book_id"
    t.index ["name"], name: "index_organizations_on_name", unique: true
  end

  create_table "paths", force: :cascade do |t|
    t.integer "category_id"
    t.integer "language_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["category_id"], name: "index_paths_on_category_id"
    t.index ["language_id"], name: "index_paths_on_language_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "locale"
    t.string "scope"
    t.text "content"
    t.text "header"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.string "locale"
    t.text "description"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "appendix"
    t.string "slug"
    t.boolean "private", default: false
    t.index ["slug"], name: "index_topics_on_slug", unique: true
  end

  create_table "usages", force: :cascade do |t|
    t.integer "organization_id"
    t.string "slug"
    t.string "item_type"
    t.integer "item_id"
    t.string "parent_item_type"
    t.integer "parent_item_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["item_type", "item_id"], name: "index_usages_on_item_type_and_item_id"
    t.index ["organization_id"], name: "index_usages_on_organization_id"
    t.index ["parent_item_type", "parent_item_id"], name: "index_usages_on_parent_item_type_and_parent_item_id"
  end

  create_table "user_stats", force: :cascade do |t|
    t.integer "exp", default: 0
    t.integer "user_id"
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_user_stats_on_organization_id"
    t.index ["user_id"], name: "index_user_stats_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "social_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "email"
    t.datetime "last_submission_date", precision: nil
    t.string "image_url"
    t.integer "last_exercise_id"
    t.integer "last_organization_id"
    t.string "uid", null: false
    t.text "permissions"
    t.string "first_name"
    t.string "last_name"
    t.boolean "accepts_reminders", default: true
    t.datetime "last_reminded_date", precision: nil
    t.date "birthdate"
    t.integer "gender"
    t.string "verified_first_name"
    t.string "verified_last_name"
    t.integer "avatar_id"
    t.datetime "disabled_at", precision: nil
    t.boolean "trusted_for_forum"
    t.string "avatar_type", default: "Avatar"
    t.datetime "headmaster_terms_accepted_at", precision: nil
    t.datetime "janitor_terms_accepted_at", precision: nil
    t.datetime "moderator_terms_accepted_at", precision: nil
    t.datetime "student_terms_accepted_at", precision: nil
    t.datetime "teacher_terms_accepted_at", precision: nil
    t.datetime "privacy_terms_accepted_at", precision: nil
    t.datetime "legal_terms_accepted_at", precision: nil
    t.datetime "forum_terms_accepted_at", precision: nil
    t.boolean "banned_from_forum"
    t.boolean "uppercase_mode"
    t.index ["avatar_type", "avatar_id"], name: "index_users_on_avatar_type_and_avatar_id"
    t.index ["disabled_at"], name: "index_users_on_disabled_at"
    t.index ["last_organization_id"], name: "index_users_on_last_organization_id"
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

  add_foreign_key "chapters", "topics"
  add_foreign_key "complements", "guides"
  add_foreign_key "lessons", "guides"
  add_foreign_key "organizations", "books"
end
