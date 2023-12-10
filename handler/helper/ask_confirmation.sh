#!/bin/bash

# Function to ask a custom question and exit if the answer is not y/Y
ask_confirmation() {
    # $1 is the first argument to the function, which will be your custom question
    read -p "💬 Confirm: $1 (yY/nN):" answer

    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        echo "🚧 Proceed: confirmed by user"
    else
        echo "🚨 Abort: abort by user"
        exit 1
    fi
}
