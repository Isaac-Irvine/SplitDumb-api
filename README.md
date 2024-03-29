# SplitDumb-api
We are trying to make our own app similar to [Splitwise](https://www.splitwise.com/).
Except its free and open source.
We're calling it SplitDumb because it will likely be Dumber than SplitWise.
This is the API for SplitDumb. Front ends will be in other repos. We'll link them here when they exist.
We'd also like to have multiple front ends. Web, mobile and Discord bot.

As a stretch goal, we'd like to add the ability to upload data from your bank account and provide insights into how your money is being spent.

# Project Status
Half of us learnt was Django was today. We've followed a quick start guide and setup a dev environment. Minimum viable product is still a distant goal.

## Opening the Dev Environment
The dev environment runs in a [Docker Dev Container](https://code.visualstudio.com/docs/devcontainers/containers).

Requirements:
1. Docker
1. VS Code
1. The Dev Containers extension for VS Code
1. WSL if you're running on Windows
1. SSH agent or credential helper. Optional. Needed if you want to push from the container. [More info here](https://code.visualstudio.com/remote/advancedcontainers/sharing-git-credentials)

Steps to open:
1. Git clone the repo (in WSL if you're on windows)
1. Open in VS code
1. Go down to the bottom left of VS code and click on blue button called "Open a remote window"
1. Click "Reopen in Container" (This might take a bit the first time you do it)
