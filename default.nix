with import <nixpkgs> {};

let
  python = python38;
  pythonPackages = python38Packages;
  rocktype = callPackage ./nix/rocktype.nix {
    pythonPackages = pythonPackages;
  };
  pytest-cov = callPackage ./nix/pytest-cov.nix {
    pythonPackages = pythonPackages;
  };
in
  mkShell {
    buildInputs = with pythonPackages; [
      rocktype 
      python 
      sphinx     ## Documentation
      pytest     ## Testing
      pytest-cov ## Code coverage
      codecov    ## Code coverage upload
      flake8     ## Python code linting
      mypy       ## Python typing
      grip       ## Preview github markdown
    ];
  }
