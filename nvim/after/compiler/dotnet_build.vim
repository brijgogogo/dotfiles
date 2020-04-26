" URL:         https://github.com/tmadsen/vim-compiler-plugin-for-dotnet

if exists("current_compiler")
  finish
endif
let current_compiler = "dotnet_build"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=dotnet\ build\ /p:GenerateFullPaths=true

CompilerSet errorformat=
    \%-A%.%#Microsoft%.%#,
    \%-A%.%#Copyright%.%#,
    \%-A%.%#Restore%.%#,
    \%-ZBuild\ FAILED.,
    \%-ZBuild\ succeeded.,
    \%C%.%#,
    \%-G%.%#,
	\%f(%l\\\,%c):\ %tarning\ %m\ [%.%#],
	\%f(%l\\\,%c):\ %trror\ %m\ [%.%#],
    \%-G%.%#
