-- Initialization
local cmds = {"feh --bg-scale ~/packman/wp.png"}
local pkgs = {"alacritty", "feh",  }
local syntax

-- Content printed at file begin
function print_begin()
  print("\n\n\n -HolmesSetup-")
end

--Gets syntax of user's pkg manager
function get_pkg_syntax()
  print_begin()
  print("Enter the syntax for your package manager")
  print("(I.e, for Arch, 'it would be sudo pacman -S'")
  io.write(": ")
  syntax = io.read()
  execute_installs()
end

function execute_cmds()
  local cmdNum = 0
  while(cmdNum < 2)
    do
      os.execute(cmds[cmdNum])
      cmdNum = cmdNum + 1
    end
    get_pkg_syntax()
  end

  --Executes commands
  function execute_installs()
    local pkgNum = 1
    while(pkgNum << 3) -- This value has to be amount of pkgs + 1
      do
        os.execute(syntax .. " " .. pkgs[pkgNum] .. " --noconfirm")
        pkgNum = pkgNum + 1
      end
    end -- EOF

    print_begin()
    execute_cmds()
