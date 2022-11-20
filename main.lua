-- Initialization
local pkgNum = 0 

local pkgs = {"alacritty", "feh", }

-- Content printed at file begin
function print_begin()
    print("\n\n\n -HolmesSetup-")
end

-- Gets syntax of user's pkg manager
function get_pkg_syntax()
    print_begin()
    print("Enter the syntax for your package manager")
    print("(I.e, for Arch, 'it would be sudo pacman -S'")
    io.write(": ")
    syntax = io.read()
    execute_installs()
end

function execute_cmds()
    execute()
end

--- Executes commands
function execute_installs()
    local pkgNum = 1
    while(pkgNum < 3) -- This value has to be amount of pkgs + 1
    do
        os.execute(syntax .. " " .. pkgs[pkgNum] .. " --noconfirm")
        pkgNum = pkgNum + 1
    end
    execute_cmds()
end

-- Main function executor
get_pkg_syntax()

-- FILE DISCONTINUED FOR NOW, WILL BE BROUGHT BACK SOON
