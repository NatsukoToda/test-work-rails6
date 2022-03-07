# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_07_050336) do

  create_table "nurseries", primary_key: "no", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false, comment: "保育園名"
    t.string "name_witout_space", null: false, comment: "db上での一致確認用の保育園名（スペース除外）"
    t.integer "large_category_no", null: false, comment: "大分類no"
    t.integer "middle_category_no", comment: "中分類no"
    t.integer "small_category_no", comment: "小分類no"
    t.integer "area_no", null: false, comment: "住所_エリアno"
    t.integer "prefecture_no", null: false, comment: "住所_都道府県no"
    t.integer "zone_no", comment: "住所_地区no"
    t.integer "city_no", null: false, comment: "住所_市区町村no"
    t.text "street", null: false, comment: "住所_市区町村より後の住所"
    t.integer "station_no", comment: "最寄駅no"
    t.integer "walking_time", comment: "最寄駅からの徒歩距離"
    t.decimal "latitude", precision: 11, scale: 8, null: false, comment: "経度"
    t.decimal "longitude", precision: 11, scale: 8, null: false, comment: "緯度"
    t.string "tel", comment: "電話番号"
    t.text "keyword", comment: "フリーワード検索用のキーワード"
    t.integer "zero_yo_capacity", comment: "0歳児定員数"
    t.integer "one_yo_capacity", comment: "1歳児定員数"
    t.integer "two_yo_capacity", comment: "2歳児定員数"
    t.integer "three_yo_capacity", comment: "3歳児定員数"
    t.integer "four_yo_capacity", comment: "4歳児定員数"
    t.integer "five_yo_capacity", comment: "5歳児定員数"
    t.integer "capacity", comment: "定員数"
    t.text "capacity_remark", comment: "定員数の補足"
    t.time "start_time", comment: "開園時間"
    t.time "end_time", comment: "終了時間"
    t.time "start_extendet_time", comment: "早朝延長開始時間"
    t.time "end_extendet_time", comment: "夜間延長終了時間"
    t.text "time_remark", comment: "時間の補足"
    t.date "open_date", comment: "設立日"
    t.date "close_date", comment: "閉園日または非表示とした日"
    t.text "open_remark", comment: "設立の補足（設立理由など/新規開園・移転など）"
    t.integer "temporary_childcare", comment: "一時保育フラグ"
    t.text "temporary_remark", comment: "一時保育の補足"
    t.text "hp", comment: "HPのurl"
    t.text "third_party_review", comment: "第三者評価のurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
