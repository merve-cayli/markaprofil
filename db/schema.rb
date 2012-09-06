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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120204202534) do

  create_table "assets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "associations", :force => true do |t|
    t.integer  "brand_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_role_id"
  end

  add_index "associations", ["brand_id"], :name => "index_associations_on_brand_id"
  add_index "associations", ["company_id"], :name => "index_associations_on_company_id"

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "entry_year"
    t.decimal  "number_of_employees"
    t.text     "office_address"
    t.boolean  "stock"
    t.string   "web_address"
    t.decimal  "rate"
    t.integer  "country_id"
    t.integer  "number_of_countries"
    t.integer  "first_entry_year"
  end

  create_table "brands_industries", :id => false, :force => true do |t|
    t.integer  "brand_id"
    t.integer  "industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands_industries", ["brand_id"], :name => "index_brands_industries_on_brand_id"
  add_index "brands_industries", ["industry_id"], :name => "index_brands_industries_on_industry_id"

  create_table "brands_products", :id => false, :force => true do |t|
    t.integer  "brand_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands_products", ["brand_id"], :name => "index_brands_products_on_brand_id"
  add_index "brands_products", ["product_id"], :name => "index_brands_products_on_product_id"

  create_table "brands_tags", :id => false, :force => true do |t|
    t.integer  "tag_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands_tags", ["brand_id"], :name => "index_brands_tags_on_brand_id"
  add_index "brands_tags", ["tag_id"], :name => "index_brands_tags_on_tag_id"

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["country_id"], :name => "index_companies_on_country_id"

  create_table "companies_tags", :id => false, :force => true do |t|
    t.integer  "company_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies_tags", ["company_id"], :name => "index_companies_tags_on_company_id"
  add_index "companies_tags", ["tag_id"], :name => "index_companies_tags_on_tag_id"

  create_table "company_roles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foreign_brands", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foreign_brands", ["country_id"], :name => "index_foreign_brands_on_country_id"

  create_table "foreign_brands_tags", :id => false, :force => true do |t|
    t.integer  "tag_id"
    t.integer  "foreign_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", :force => true do |t|
    t.string   "name"
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", :force => true do |t|
    t.integer  "country_id"
    t.integer  "brand_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_role_id"
  end

  add_index "markets", ["brand_id"], :name => "index_markets_on_brand_id"
  add_index "markets", ["country_id"], :name => "index_markets_on_country_id"

  create_table "milestones", :force => true do |t|
    t.string   "text"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "milestones", ["brand_id"], :name => "index_milestones_on_brand_id"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["country_id"], :name => "index_people_on_country_id"

  create_table "people_tags", :id => false, :force => true do |t|
    t.integer  "people_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people_tags", ["people_id"], :name => "index_people_tags_on_people_id"
  add_index "people_tags", ["tag_id"], :name => "index_people_tags_on_tag_id"

  create_table "person_roles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "possessions", :force => true do |t|
    t.integer  "number"
    t.integer  "asset_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "quantity"
  end

  add_index "possessions", ["asset_id"], :name => "index_possessions_on_asset_id"
  add_index "possessions", ["brand_id"], :name => "index_possessions_on_brand_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "people_id"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_role_id"
  end

  add_index "relationships", ["brand_id"], :name => "index_relationships_on_brand_id"
  add_index "relationships", ["people_id"], :name => "index_relationships_on_people_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.string   "tag_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trivia", :force => true do |t|
    t.text     "body"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
