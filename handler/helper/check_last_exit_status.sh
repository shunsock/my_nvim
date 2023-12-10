#!/bin/bash

check_last_exit_status() {
  if [ $? -eq 0 ]; then
    echo "✅ Success: $1"
  else
    echo "🚨 Failed: $1"
    exit 1
  fi
}
