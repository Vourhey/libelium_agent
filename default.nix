{ stdenv
, mkRosPackage
, robonomics_comm
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "libelium_agent";
  version = "0.1.0";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [ robonomics_comm pyserial ];

  meta = with stdenv.lib; {
    description = "Simple modular AIRA example effort";
    homepage = http://github.com/airalab/autonomous_agent_template;
    license = licenses.bsd3;
    maintainers = with maintainers; [ akru ];
  };
}
