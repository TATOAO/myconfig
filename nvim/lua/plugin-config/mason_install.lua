-- init.lua or a dedicated lua configuration file

-- Ensure Mason is installed
require("mason").setup()

-- Function to ensure Mason installs required packages
local function ensure_mason_packages_installed()
  local mason_registry = require("mason-registry")
  
  -- List of packages to ensure installed
  local packages = {
    "lua-language-server",
    "pyright",
	"yapf",
	"black",
	"isort",
	"sql-formatter"
  }

  -- Ensure each package is installed
  for _, package in ipairs(packages) do
    local pkg = mason_registry.get_package(package)
    if not pkg:is_installed() then
      pkg:install()
    end
  end
end

-- Call the function to install packages on startup
ensure_mason_packages_installed()



