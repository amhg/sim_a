module CreateTableUsers

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:users) do
    [
      pk()
      column(:userid, :string, limit = 100)
      column(:username, :string, limit = 100)
      column(:password, :string, limit = 100)
      column(:firstname, :string, limit = 100)
      column(:lastname, :string, limit = 100)
      column(:email, :string, limit = 100)
    ]
  end

  add_index(:users, :userid)
end

function down()
  drop_table(:users)
end


end
