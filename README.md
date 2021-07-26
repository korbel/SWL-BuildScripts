# SWL Build Scrips

This repository contains the scripts to build an SWL mod.


## Installation instructions

To make it work you have do these steps first:

- Acquire the CLIK library (this step is optional). Find the UDKInstall-2015-02.exe, install it (UT Simple Game) and copy the content of the `<UDK installation folder>\Development\Flash\AS2\CLIK` folder into the `CLIK` folder. You can remove then the UDK installation.
- Download the latest [HaxeDevelop](https://github.com/HaxeFoundation/haxedevelop.org/releases/) and copy the `Tools\fdbuild` (FlashDevelop build tool), `Tools\mtasc` (AS2 compiler) and `Tools\swfmill` (SWF Movie structure creator) folders here.
- Copy the content of the `<SWL installation folder>\Data\Gui\Custom\Flash\Sources` into the `Sources` folder.
- You may need to alter the SWL Source, it contains compilation errors. More info here: <https://docs.google.com/document/d/17c5wV2a7Z--KpEWTobFtoWXO-oHSKT43h_94_TRrG-M/edit?usp=sharing>.
- Change the `gamedir` variable in the `build.bat` file to point to your SWL installation folder.


## Usage

Double click on `add_context_menu.bat` to add the "Build as SWL mod" context menu item for .as2proj files.
To remove the context menu item, run the `remove_context_menu.bat` file.

Opening an .as2proj file directly with the `build.bat` executable will build it and copy the result into the SWL directory.

Example for the file structure the build script can work on:

```
Project/
│-- README.md
│-- LICENSE.md
│-- Project.as2proj
|-- bin/
│   `-- Project.swf
│-- src/
|   |-- com/
|   |   `-- projectname/
|   |       |-- Main.as
|   |       `-- Foobar.as
|   `-- mod/
|       |-- Modules.xml
|       |-- CharPrefs.xml
|       `-- LoginPrefs.xml
`-- .gitignore
```

It builds the .as2proj file, and copies the content of the `/bin` folder, the `/src/mod` folder and all the `.md` files in the root folder into `<SWL installation folder>\Data\Gui\Custom\Flash\ProjectName`.

The .as2proj file must follow the FlashDevelop project file format. An example project that can be used as a template is included in the `template` folder.
