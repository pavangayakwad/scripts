# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.default = "saved";
  time.hardwareClockInLocalTime = true;

  boot.supportedFilesystems = [ "ntfs" ];
  
  zramSwap.enable = true;
  
  boot.kernelModules = ["i2c_dev"];
  services.udev.extraRules = ''
      KERNEL=="i2c-[0-9]*", GROUP="i2c", MODE="0660"
  '';

  systemd.services."ddcci@" = {
  	scriptArgs = "%i";
  	script = ''
	  	echo Trying to attach ddcci to $1
	  	i=0
	  	id=$(echo $1 | cut -d "-" -f 2)
	  	if ${pkgs.ddcutil}/bin/ddcutil getvcp 10 -b $id; then
	  	  echo ddcci 0x37 > /sys/bus/i2c/devices/$1/new_device
	  	fi
  	'';
  };

  networking.hostName = "mars"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.videoDrivers = ["nvidia"];

  #Microsoft one-drive support: https://nixos.wiki/wiki/OneDrive	
  services.onedrive.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;  

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.pavan = {
    isNormalUser = true;
    description = "Pavan";
    extraGroups = [ "networkmanager" "wheel" "docker" "i2c" "libvirtd"];
    packages = with pkgs; [
	firefox
	thunderbird
	vscode
	filezilla
	nodejs_18
	tilix
	emote
	microsoft-edge
	google-chrome
	brave
	python311
	jdk
	skypeforlinux
	jetbrains.idea-ultimate
	jetbrains.datagrip
	jetbrains.webstorm
	jetbrains.rider
	android-studio
	opera
	mailspring
	telegram-desktop
	dbeaver
	mysql-workbench
	mongodb-compass
	postman
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [ 
	pkgs.inter 
	pkgs.xorg.fonttosfnt 
	lshw 
	ddcutil 
	gnomeExtensions.gtile 
	gnomeExtensions.brightness-control-using-ddcutil 
	gnomeExtensions.color-picker 
	gnomeExtensions.just-perfection 
	gnomeExtensions.launch-new-instance
	gnomeExtensions.rounded-window-corners
	gnomeExtensions.start-overlay-in-application-view
	gnomeExtensions.vitals
	gnome.gnome-tweaks
	wget 
	curl 
	jq 
	filezilla
	libreoffice
	htop
	neofetch
	git
	micro
	flameshot
	virt-manager
	appeditor
	zoom-us
	copyq
	maven
	gcc
	freerdp
	nodePackages_latest.typescript
	gnome.nautilus-python
	nautilus-open-any-terminal
	dotnet-sdk_7
	gparted
	util-linux
	#  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  # Docker installation
  virtualisation.docker.enable = true;
  
  #QEMU
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
  system.autoUpgrade.enable = true;

  nix.gc = {        
  	automatic = true;        
  	dates = "weekly";        
  	options = "--delete-older-than 15d";    
  };
}