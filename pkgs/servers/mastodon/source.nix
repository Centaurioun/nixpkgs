# This file was generated by pkgs.mastodon.updateScript.
{ fetchFromGitHub, applyPatches }: let
  src = fetchFromGitHub {
    owner = "mastodon";
    repo = "mastodon";
    rev = "v4.1.7";
    hash = "sha256-afGv7/Cl7bxbHvLXrtpZPlG4oJeL7LgQQKXBBt3LRSo=";
  };
in applyPatches {
  inherit src;
  patches = [];
}
