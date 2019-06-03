class RolifyCreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:members_roles, :id => false) do |t|
      t.references :member
      t.references :role
    end

    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:members_roles, [ :member_id, :role_id ])
  end
end
