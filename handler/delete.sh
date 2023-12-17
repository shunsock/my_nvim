#!/bin/bash

source ./handler/helper/ask_confirmation.sh;
source ./handler/helper/check_last_exit_status.sh;
source ./handler/helper/message.sh;

check_nvim_dir_exists() {
  nvim_dir="$HOME/.config/nvim"

  show_start_message "check nvim dir exists";

  show_check_message "${nvim_dir} exists?";
  if [ -d "${nvim_dir}" ]; then
    show_result_message "${nvim_dir} exists";
  else
    show_error_message "${nvim_dir} does not exist";
    show_abort_message "no nvim dir to delete => exit ..."
    exit 1
  fi

  show_end_message;
}

delete_nvim_dir() {
  nvim_dir="$HOME/.config/nvim"

  show_start_message "delete nvim dir";

  show_check_message "${nvim_dir} exists?";

  show_warning_message "you will delete ${nvim_dir}";

  ask_confirmation "delete ${nvim_dir} ?";
  rm -r "$HOME/.config/nvim";
  check_last_exit_status "delete nvim dir";

  show_end_message;
}

main() {
  check_nvim_dir_exists;
  delete_nvim_dir;
}

main;
