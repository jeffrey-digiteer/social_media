class CreateAudittrails < ActiveRecord::Migration[7.0]
  def change
    create_table :audittrails do |t|
      t.string   :module
      t.string   :event_type
      t.text     :current_data
      t.text     :old_data
      t.text     :data_differences
      t.inet     :ip_address
      t.string   :modified_by_email
      t.string   :modified_by_name
      t.timestamps
    end

    add_index :audittrails, :module
    add_index :audittrails, :event_type
    add_index :audittrails, :modified_by_email
  end
end
