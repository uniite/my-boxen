class people::uniite {
  
  $home = "/Users/${::boxen_user}"

  # Projects
  include projects::dinheiro
  include projects::noshare

  
  ## Includes
  # Android development
  include android::platform_tools
  include android::tools
  # Backup Software
  include crashplan
  # Bash and various auto-completions (eg. Git)
  include bash::completion
  # Browser(s)
  include chrome
  # Clipboard history
  #include jumpcut
  # IDEs/Editors
  include pycharm
  include rubymine
  include sublime_text_2
  # Database Server
  include mysql
  # Python 2.7
  include python
  # X Server
  include xquartz

  # Various additional homebrew packages
  package {
    "watch": ;
  }
  
  ## OS X Settings
  include osx::dock::autohide
  include osx::dock::position
  # Easy way to lock the computer
  osx::dock::hot_corner { "Top Right":
    action => "Start Screen Saver",
  }
  include osx::finder::unhide_library
  include osx::finder
  include osx::global::tap_to_click
  include osx::no_network_dsstores

  # .bash_profile
  file { "${home}/.bash_profile":
    source => "puppet:///modules/people/uniite/bash_profile",
  }

  # Passwordless sudo
  sudoers { "jon_sudo":
    users    => $::boxen_user,
    type     => "user_spec",
    commands => "(ALL) NOPASSWD: ALL",
    hosts    => "ALL",
    comment  => "Do not ask for password for jon",
  }
}
