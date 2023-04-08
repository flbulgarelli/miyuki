require 'active_record/connection_adapters/sqlite3/schema_definitions.rb'

ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition.class_eval do
  alias_method :inet, :string
end
