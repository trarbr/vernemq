-module(emqttd).
-export([start/0, stop/0]).

start() ->
    application:start(ranch),
    application:start(mnesia),
    application:start(emqttd).

stop() ->
    application:stop(emqttd),
    application:stop(mnesia),
    application:stop(ranch).

