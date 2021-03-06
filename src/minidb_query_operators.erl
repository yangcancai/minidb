%%%-------------------------------------------------------------------
%% @doc minidb query operators
%% @end
%%%-------------------------------------------------------------------

-module(minidb_query_operators).

-author('Leonardo Rossi <leonardo.rossi@studenti.unipr.it>').

-export([
  '$eq'/2,
  '$gt'/2,
  '$gte'/2,
  '$lt'/2,
  '$lte'/2,
  '$ne'/2
]).

%%====================================================================
%% API
%%====================================================================

'$eq'(Value1, Value2) -> Value1 =:= Value2.

'$gt'(Value1, Value2) -> Value1 > Value2.

'$gte'(Value1, Value2) -> '$gt'(Value1, Value2) or '$eq'(Value1, Value2).

'$lt'(Value1, Value2) -> '$gte'(Value2, Value1).

'$lte'(Value1, Value2) -> '$gt'(Value2, Value1).

'$ne'(Value1, Value2) -> not '$eq'(Value1, Value2).

%%====================================================================
%% Internal functions
%%====================================================================
