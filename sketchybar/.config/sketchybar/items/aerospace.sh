#!/bin/bash

CONFIG_DIR=${CONFIG_DIR:-$HOME/.config/sketchybar}

aerospace_spaces () {
  ALL_WSS=$(aerospace list-workspaces --all);
  CURRENT_WS=$(aerospace list-workspaces --focused)
  TMP_WSS=()

  local args=()
  # for i in $ALL_WSS; do
  #   args+=(--remove aerospace.workspace.$i)
  # done

  for ws in $ALL_WSS; do
    args+=(--remove aerospace.workspace.$ws)

    local windows=$(aerospace list-windows --workspace "$ws" --format '%{window-id}' | wc -l)
    if [ $windows -gt 0 ] || [ "$ws" = "$CURRENT_WS" ]; then
      TMP_WSS+=("$ws")
      args+=(
        --add item space.$ws left
        --set space.$ws
        label="$ws"
        )
    fi
  done

  sketchybar "${args[@]}" > /dev/null 2>&1 &
}

aerospace_spaces
