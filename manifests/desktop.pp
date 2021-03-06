class philduffy::desktop {
  notice('Installing philduffy::desktop')

  include alfred
  include brewcask
  include chrome::canary
  include iterm2::stable
  include redis
  include virtualbox

  # Brew Cask
  package {
    [
      'amazon-music',
      'caffeine',
      'firefox',
      'google-chrome',
      'mailbox',
      'nimbus',
      'plex-home-theater',
      'quickhue',
      'sonos',
      'vlc'
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }

  exec {'brew cask alfred link':}

  # Homebrew
  package {
    [
      'direnv'
    ]:
    ensure => installed
  }
}
