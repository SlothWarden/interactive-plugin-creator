# Plugin Creator!
This is a simple bash file that will automate creating a Paper plugin for 26.1.2 Minecraft Jm
## How to run it
To run it all you have to do is run the following command:
source <(curl -s https://slothwarden.github.io/cowi/cowi.sh)
## Simplifying it
If you want to make it easier to type do this for a zsh shell:
nano .zshrc  
Then make sure to find a spot where it won't hurt other configurations, like sdkman if you have it
Then simply write alias cowi="source <(curl -s https://slothwarden.github.io/cowi/cowi.sh)"
After that save your changes, once your back into the terminal type source ~/.zshrc
And you're done! To run the script type cowi
Note: If you aren't using the zsh shell or this doesn't work, research the proper startup file for your system.