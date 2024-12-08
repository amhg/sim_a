module AddCategoryDateToUsers
import SearchLight.Migrations: add_columns, remove_columns, add_indices, remove_indices

function up()
    add_columns(:users, [
        :activo => :boolean,
        :categoria => :string,
        :fecha => :date,
    ])
    add_indices(:users, [
        :activo,
        :categoria,
        :fecha
    ])
end

function down()
    remove_indices(:users, [
        :activo,
        :categoria,
        :fecha,
    ])
    remove_columns(:users, [
        :activo,
        :categoria,
        :fecha
    ])
end

end
