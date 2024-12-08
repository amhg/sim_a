(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Sim
const UserApp = Sim
Sim.main()
