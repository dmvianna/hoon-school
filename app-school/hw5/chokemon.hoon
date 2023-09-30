:: Chokemon
::
:::: A pokemon API client, with caching.
  ::
/+  default-agent, dbug
|%
::  We have state
+$  versioned-state
  $%  state-0
  ==
::  and the state is a json list
+$  state-0
  $:  [%0 values=(map @t json)]
  ==
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this     .
    def      ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  [(list card) _this]
  ~&  >  '%chokemon initialised successfully'
  =.  state  [%0 *(map @t json)]
  `this
++  on-save  !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  :-  ^-  (list card)
      ~
  %=  this
    state  !<(state-0 old)
  ==
++  on-poke
  |=  [pokemon=@t =vase]
  ^-  [(list card) _this]
  :: Check if we already know this pokemon
  =/  r  ((dig by state) pokemon)
  ?~  r
    :: No we don't. Try to fetch it via thread.
    :-  ^-  (list card)
    :~  [%pass /al %arvo %k %fard %base %pokedex %noun !>(pokemon)]
    ==
    this
  :: Yes we do. Just return it.
  ~&  r
  ~&  "{pokemon} exists!"
  [~ this]

::
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  [(list card) _this]
  ?+  wire  (on-arvo:def wire sign-arvo)
    [%pokedex ~]  :: Is this a well formed pokemon name?
      ~&  "Unknown pokemon."
        [~ this]
    [%pokedex @]  :: Add to state and return json.
      =/  info  t.wire
      =/  reparse-name
        =,  dejs-soft:format
        |=  info=json
        ^-  cord
        =/  maybe  %-  ot  [%name so]
        ?~  maybe
            ~
          +<:maybe
      =/  name  (reparse-name info)
      ~&  info
      ~&  "{name} exists!"
      :_  this  (~(put by state) [name info])
  ==
++  on-fail  on-fail:def
--
