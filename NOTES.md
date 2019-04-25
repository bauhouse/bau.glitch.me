# NOTES

## Creating a blog with Ghost on Glitch

- Navigate to <https://glitch.com/~ghost>
- Click on the `Remix your own` button
- Rename the project to `bau`
- Click on the `Show` button and show app `In New Window` at [bau.glitch.me](https://bau.glitch.me/)
- Navigate to <https://bau.glitch.me/ghost/>
- Create a new user for Ghost
- Ghost is configured with the default project URL: https://crystal-cuticle.glitch.me/
- Found an article in the Ghost documentation: [How do I change my configured site URL?](https://docs.ghost.org/faq/change-configured-site-url/)
- Create a GitHub repository: <https://github.com/bauhouse/bau.glitch.me/>
- Create this NOTES file to initialize the repository
- Export to GitHub from Glitch to the `bauhouse/bau.glitch.me` respository
- Clone the repository to my computer
  - Open a terminal window
  - Navigate to the `glitch` directory in my `workspace`: `cd ~/workspace/glitch`
  - Clone the GitHub repository into a directory named `bau`: `git clone git@github.com:bauhouse/bau.glitch.me.git bau`
- Merge the `glitch` branch into `master`
- Restore the `NOTES` file: `git checkout 9cacb0711 -- NOTES`
- Open the Glitch console
- View the Git branches: `git branch -v`
- The master repository does not contain the same history as the exported `glitch` branch
- Change the workflow by making changes on GitHub and pulling them into Glitch
- Rename the `master` branch on glitch: `git branch -m master default`
- Add remote to git: `git remote add origin https://github.com/bauhouse/bau.glitch.me.git`
- Fetch the GitHub repository: `git fetch origin`
- Checkout the `master` branch: `git checkout origin/master`
- The repository is in 'detached HEAD' state
- Create the `master` branch: `git checkout -b master`
- Rename NOTES to NOTES.md to render Markdown in GitHub
- Pull the repository changes into Glitch
  - Open the Glitch console
  - Navigate to the user directory: `cd`
  - Pull changes from the GitHub repository: `git pull origin master`
- Update dependencies in `package.json` by clicking on the packages under the `Add Package` button in Glitch
  - This put Glitch into an infinite loop
  - `Error: ENOENT: no such file or directory, open '/app/data/stephen-bau.ghost.2019-04-25-15-13-41.json'`
  - Try to grab the missing data file from the `default` repository but didn't find it there
  - The application fails to start
  
> failed to start application on bau.glitch.me
>
>  This is most likely because your project has a code error.
>  Check your project logs, fix the error and try again.  
