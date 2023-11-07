#!/usr/bin/env bash

# Show i3 layout on polybar

case $(i3-msg -t get_tree | jq --raw-output 'recurse(.nodes[]; .nodes !=null) | select(.nodes[].focused).layout') in
  splith) echo "[horizontal]" ;;
  splitv) echo "[vertical]" ;;
  tabbed) echo "[tabbed]" ;;
  stacked) echo "[stacking]" ;;
esac


