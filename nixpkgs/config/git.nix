{
  enable = true;
  userName = "Marius Butuc";
  userEmail = "marius.butuc@gmail.com";

  aliases = {
    br = "branch";
    co = "checkout";
    st = "status";
  };

  extraConfig = {
    github = {
      user = "mariusbutuc";
    };
    push = {
      autoSetupRemote = "true";
    };
  };

  ignores = [
    ".DS_Store"
  ];
}
