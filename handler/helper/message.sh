#!/bin/bash

show_start_message() {
    echo "🚀 Start: $1";
    echo "+--------------------------------------+";
}

show_end_message() {
    echo;
}

show_check_message() {
    echo "🔍 Check: $1";
}

show_warning_message() {
    echo "💥 Warning: $1";
}

show_error_message() {
    echo "🚨 Error: $1";
}

show_result_message() {
    echo "📝 Result: $1";
}

show_abort_message() {
    echo "🚨 Abort: $1";
}
