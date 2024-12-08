module Users

using Dates
using SearchLight

import SearchLight.DataFrames.DataFrame
import SearchLight: AbstractModel, DbId
import Base: @kwdef

export User

const CATEGORIAS = ["ejecutivo", "staff", "comunicacion", "analisis", "prensa", "investigacion", "publico"]

@kwdef mutable struct User <: AbstractModel
  id::DbId = DbId()
  userid::String = ""
  username::String = ""
  password::String = ""
  firstname::String = ""
  lastname::String = ""
  email::String = ""
  activo::Bool = false
  categoria::String = CATEGORIAS[end]
  fecha::Date = Dates.today()
end


function search(; activo = false, startdate = today() - Month(1), enddate = today())

  filters = SQLWhereEntity[
      SQLWhereExpression("activo = ?", activo),
      SQLWhereExpression("fecha >= ? AND fecha <= ?", startdate, enddate),
      #SQLWhereExpression("user_id = ?", 4)
  ]

  println(filters)

  DataFrame(User, SQLQuery(
    columns = SQLColumns(User, (
      #total_time = SQLColumn("SUM(duration) AS total_time", raw = true),
      #total_todos = SQLColumn("COUNT(*) AS total_todos", raw = true),
    )),
    where = filters,
    #group = group,
    order = ["fecha ASC", "categoria ASC"],
  ))
end

end


