module UsersController

using Sim.Users
using Genie.Renderers, Genie.Renderers.Html

using GenieAuthentication
using Sim.AuthenticationController
using Sim

function index()
    #authenticated!()
        
    html(:users, :index; users = all(User))  
end

end