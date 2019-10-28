{ stdenv
, mkRosPackage
, robonomics_comm
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "libelium_agent";
  version = "0.1.0";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [ robonomics_comm pyserial ipfsapi ];

  meta = with stdenv.lib; {
    description = "Libelium agent";
    homepage = http://github.com/vourhey/libelium_agent;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
