Update fork

To update a fork, you need to synchronize your local copy with the original repository (upstream) and then push the changes to your forked repository on GitHub. Here’s a step-by-step guide:

Add the upstream repository as a remote:
Run git remote -v to list the current remotes.
Add the upstream repository as a new remote using git remote add upstream <upstream-repo-url>.
Verify the new remote using git remote -v.

Fetch changes from the upstream repository:
Run git fetch upstream to retrieve the latest commits from the upstream repository.

Merge changes into your local branch:
Checkout your fork’s local branch (e.g., master) using git checkout master.
Merge the upstream branch (e.g., upstream/master) into your local branch using git merge upstream/master --no-ff.

Commit and push changess:
Add changes using git add ..
Commit the changes with a meaningful message using git commit -m "Sync with upstream repository.".
Push the changes to your forked repository on GitHub using git push origin master.
