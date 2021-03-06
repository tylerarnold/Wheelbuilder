# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 13) do

  create_table "hubs", :force => true do |t|
    t.column "description", :string,   :default => "",  :null => false
    t.column "s",           :float,    :default => 2.5, :null => false
    t.column "dl",          :float,    :default => 0.0, :null => false
    t.column "dr",          :float,    :default => 0.0, :null => false
    t.column "wl",          :float,    :default => 0.0, :null => false
    t.column "wr",          :float,    :default => 0.0, :null => false
    t.column "old",         :float,    :default => 0.0, :null => false
    t.column "forr",        :string,   :default => "f", :null => false
    t.column "created_on",  :datetime
    t.column "updated_on",  :datetime
    t.column "comment",     :string
    t.column "email",       :string
  end

  add_index "hubs", ["forr"], :name => "index_hubs_on_forr"
  add_index "hubs", ["description"], :name => "index_hubs_on_description"

  create_table "rims", :force => true do |t|
    t.column "description", :string,   :default => "",  :null => false
    t.column "erd",         :float,    :default => 0.0, :null => false
    t.column "osb",         :float,    :default => 0.0, :null => false
    t.column "size",        :integer,  :default => 0,   :null => false
    t.column "created_on",  :datetime
    t.column "updated_on",  :datetime
    t.column "comment",     :string
    t.column "email",       :string
  end

  add_index "rims", ["size"], :name => "index_rims_on_size"
  add_index "rims", ["description"], :name => "index_rims_on_description"

  create_table "sessions", :force => true do |t|
    t.column "session_id", :string
    t.column "data",       :text
    t.column "updated_at", :datetime
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end
