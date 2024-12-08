using Genie
using Sim.Users

route("/", PagesController.index)

route("/users", UsersController.index)

route("/dashboard", DashboardController.index )