# Boost libraries - trimmed down for Citra
This is a subset of Boost v1.67.0 generated using the bcp tool. To get a list of boost modules guaranteed to exist, check the build script.

## How To Update

To update the Boost version (or to add a new library) follow the steps below.

### Windows

  - Download [Boost](https://www.boost.org) and extract the package, then launch Powershell and `cd` to the `boost_1_xx_0` directory.
  - Build the `bcp` tool:
    ```
    .\boostrap.bat
    .\b2 tools\bcp
    ```
  - Store the boost directory in a variable for later use: `$boost_dir = $pwd`.
  - Add bcp to your path: `$env:Path += $boost_dir\bin.v2\tools\bcp\msvc-14.1\release\link-static\threading-multi` (The correct output path should be printed by b2 during the build.)
  - `cd` to this repo's directory (`...\externals\boost\`)
  - Remove the existing boost from the repo: `rm -r boost` (This is only necessary if doing a Boost version upgrade, in case they removed any files in the new version.)
  - Run `.\build.cmd $boost_dir` to build a new trimmed down distro.
  - Add/remove all files in git and commit.

### OSX
  - Install `boost-bcp` with homebrew.
  - Download [Boost](https://www.boost.org) and extract the package, then `cd` to the `boost_1_xx_0` directory.
  - Store the boost directory in a variable for later use: `export boost_dir=$PWD`.
  - `cd` to this repo's directory (`...\externals\boost\`)
  - Remove the existing boost from the repo: `rm -rf boost` (This is only necessary if doing a Boost version upgrade, in case they removed any files in the new version.)
  - Run `.\build.sh $boost_dir` to build a new trimmed down distro.
  - Add/remove all files in git and commit.
