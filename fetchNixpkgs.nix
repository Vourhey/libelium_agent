{ rev    ? "ef85a20c8a89d146396d7f92d486f36efd8df734"             # The Git revision of nixpkgs to fetch
, sha256 ? "022kzr56nrfza1v9bbvrw2kra4in1ynfbglpfjhi2ycxnn1flnp1" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
