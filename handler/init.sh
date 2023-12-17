#!/bin/bash

source ./handler/helper/ask_confirmation.sh;
source ./handler/helper/check_last_exit_status.sh;
source ./handler/helper/message.sh;

check_dot_config_exists() {
  show_start_message "check dot config exists";
  config_dir="$HOME/.config"

  show_check_message "${config_dir} exists?";
  if [ -d "$HOME/.config" ]; then
    show_result_message "${config_dir} exists";
  else
    show_error_message "${config_dir} does not exist";
    ask_confirmation "create ${config_dir} ?";
    mkdir -p "${config_dir}";
  fi

  show_end_message;
}

create_nvim_dir() {
  show_start_message "create nvim dir";
  nvim_dir="$HOME/.config/nvim"

  show_check_message "${nvim_dir} exists?";
  if [ -d "$HOME/.config/nvim" ]; then
    show_result_message "${nvim_dir} exists";
    show_warning_message "you will overwrite ${nvim_dir}";

    ask_confirmation "overwrite ${nvim_dir}?";

    rm -rf "${nvim_dir}";
    cp -r ./nvim "${nvim_dir}";
    check_last_exit_status "create nvim dir";

  else
    show_result_message "${nvim_dir} does not exist => create ${nvim_dir}";

    cp -r ./nvim "${nvim_dir}";
    check_last_exit_status "create nvim dir";
  fi

  show_end_message;
}

main() {
  check_dot_config_exists;
  create_nvim_dir;
}

main;
