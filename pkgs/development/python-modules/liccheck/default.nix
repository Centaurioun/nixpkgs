{ lib
, buildPythonPackage
, configparser
, fetchFromGitHub
, pip
, pytest-mock
, pytestCheckHook
, python3-openid
, pythonOlder
, semantic-version
, toml
}:

buildPythonPackage rec {
  pname = "liccheck";
  version = "0.9.1";
  format = "setuptools";

  disabled = pythonOlder "3.7";

  src = fetchFromGitHub {
    owner = "dhatim";
    repo = "python-license-check";
    rev = "refs/tags/${version}";
    hash = "sha256-ZgwHcZI0vsNYJWPkUnoBogVPPIuifAX9hu4fa1fHSz4=";
  };

  propagatedBuildInputs = [
    configparser
    semantic-version
    toml
  ];

  nativeCheckInputs = [
    pip
    pytest-mock
    pytestCheckHook
    python3-openid
  ];

  pythonImportsCheck = [
    "liccheck"
  ];

  meta = with lib; {
    description = "Check python packages from requirement.txt and report issues";
    homepage = "https://github.com/dhatim/python-license-check";
    changelog = "https://github.com/dhatim/python-license-check/releases/tag/${version}";
    license = licenses.asl20;
    maintainers = with maintainers; [ fab ];
  };
}
