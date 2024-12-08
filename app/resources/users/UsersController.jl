module UsersController

using Sim.Users
using Genie.Renderers, Genie.Renderers.Html

function index()
html(:users, :index; users = all(User))  
end

end