term.pushColor(term.yellow)
print("Workspace: fmt")
term.popColor()
require("premake", ">=5.0.0-beta4")

workspace "fmt"
   configurations { "Debug", "Release" }
   startproject "fmt"

include "fmt"
