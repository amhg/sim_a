module PagesController
 
using Genie.Renderers, Genie.Renderers.Html

function index()
html(:pages, :page)  
end
end
