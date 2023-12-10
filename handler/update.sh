#!/bin/bash

source ./handler/helper/ask_confirmation.sh;
source ./handler/helper/check_last_exit_status.sh;
source ./handler/helper/message.sh;

check_nvim_dir_exists() {
  show_start_message "check nvim dir exists";
  nvim_dir="$HOME/.config/nvim";

  show_check_message "${nvim_dir} exists?";
  if [ -d "${nvim_dir}" ]; then
    show_result_message "${nvim_dir} exists";
  else
    show_error_message "${nvim_dir} does not exist";
    show_abort_message "no nvim dir to update => exit ..."
    exit 1
  fi

  show_end_message;
}

update_nvim_dir() {
  show_start_message "update nvim dir";
  nvim_dir="$HOME/.config/nvim";

  show_check_message "${nvim_dir} exists?";
  warning_message "you will update ${nvim_dir}";

  ask_confirmation "update ${nvim_dir} ?";
  rm -rf "${nvim_dir}";
  cp -r ./nvim "${nvim_dir}";
  check_last_exit_status "update nvim dir";

  show_end_message;
}

main() {
  check_nvim_dir_exists;
  update_nvim_dir;
}

main;
