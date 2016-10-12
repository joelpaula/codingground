-module(afile_server).
-export([start/1]).
start(Dir) -> spawn(afile_server).