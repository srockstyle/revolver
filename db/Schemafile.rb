
create_table "monsters", force: :cascade do |t|
  t.string "name", null: false, unique: true, index: true
  t.string "description", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "cities", force: :cascade do |t|
  t.string "name", null: false, unique: true, index: true
  t.string "description", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "spots", force: :cascade do |t|
  t.string "name", null: false, unique: true, index: true
  t.string "description", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
