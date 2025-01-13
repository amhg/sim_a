module PagesController
 
using Genie.Renderers, Genie.Renderers.Html
using GenieAuthentication
using Sim.AuthenticationController
using Sim

function index()
    #authenticated!()
    html(:pages, :page)  
end
end
