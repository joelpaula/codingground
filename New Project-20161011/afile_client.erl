-module(afile_client).
-export([ls/1,get_file/2]).
ls(Server) ->
    Server ! {Server, list_dir},
    receive
        {Server, FileList} ->
            FileList
    end.
get_file(Server, File) ->
    Server ! {Server, get_file, File},
    receive
        {Server, Content} ->
            Content
    end.
    