# NHL 94' SNESVault
Project "Back to the Ice": Decompiling NHL '94 on SNES, Slaying Bugs, Hacking the Puck, and Power-Playing Enhancements!
Please see the [Installation / Setup](https://github.com/Mhopkinsinc/NHL94SNESVault/wiki) section for instructions and tutorials.

## Installation

- Install [Git](https://git-scm.com/downloads) & [Visual Studio Code](https://code.visualstudio.com/download) and Clone this Repo. [Not technically required, but makes life easier]
    
    - Detailed [Windows](https://github.com/Mhopkinsinc/NHL94SNESVault/wiki/Windows) Install / Setup Instructions
    - Detailed [Mac](https://github.com/Mhopkinsinc/NHL94SNESVault/wiki/macOS) Install / Setup Instructions
    - Detailed [Linux](https://github.com/Mhopkinsinc/NHL94SNESVault/wiki/Linux) Install / Setup Instructions

## Building

- If you just want to build the rom and turn certain hacks on and off:
    - Edit Src/Config.asm to set your Rom preferences
        - Def. Control ON by default
        - 30 Second Periods 
        - Real Time Clock
        - 1 Minute Penalties
        - Modify timing of when CPU pulls goalie if it is trailing:
            - Change how early the goalie is pulled
            - Change if the goalie is pulled when behind by 1, 2, 3 or more goals
        - Pull Goalie During Game Play with L+R Trigger buttons (Coming Soon)

    - Run "1 - Compile Roms" task in Visual Studio Code Task Runner.
        - This task creates .smc and .sfc version of the rom in the Output folder.
        - Copy the rom to your emulator of choice

## Contributing

- Discussions
    - Use the Discussions Tab for Q & A or share info regarding NHL 94' for SNES

- Create an Issue using the Issues Tab
    - Request a New Hack
    - Request Porting a GENS hack to SNES
    - Report Existing Bug in the game    

- Interested in tweaking things? Start by forking the project, then branch out from the issue you've pinpointed to initiate your modifications.
    - Create a pull request for review

## Usage

- This project is intended for educational purposes and should be used ethically and legally. Please ensure that you adhere to the following guidelines when using the tools and files provided in this repository.
    
    - A legally obtained copy of the ROM that corresponds to the files and tools in this repository. This project does not endorse or promote piracy. Ownership of the original ROM is mandatory.

