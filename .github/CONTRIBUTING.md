# Contribution Guide

## Quick Start

### Fork a copy
Fork a copy  of the original repository to your own repository. Github provides
a convenient button at the top right of the repositories page.

### Clone Your Fork
Clone your fork to your local machine, so you can start working.

```bash

$ git clone git@github.com:YOUR_USER_NAME/milspousecoders.git

```

Do be sure to replace YOUR_USER_NAME with your user name.

### Keep your fork up-to-date
We need to make sure we keep our local copy up-to-date since there are so many
others contributing as well (at least we hope).

```bash

$ git remote add upstream git@github.com:MilSpouseCoders/milspousecoders.git

```

Let's make sure that worked.

```bash

$ git remote -v
# You should see something like this:
# origin	git@github.com:YOUR_USER_NAME/milspousecoders.git (fetch)
# origin	git@github.com:YOUR_USER_NAME/milspousecoders.git (push)
# upstream	git@github.com:MilSpouseCoders/milspousecoders.git (fetch)
# upstream	git@github.com:MilSpouseCoders/milspousecoders.git (push)

```

Still following? Now we want to make sure we are working in `master`.

```bash

$ git checkout master

```

Now let's merge the `upstream/master`.

```bash

$ git merge upstream/master

```

### Do Work
Now it is time to get to work on that shiny new feature.

```bash

$ git checkout master
$ git checkout -b newFeature

```

Here we again made sure we were on our master branch and then we create a new
branch called newFeature. The branch name should identify the issue you are
working on. For example issue-5 or add-contribution-instructions.  

The `-b` is a flag. `$ git checkout -b newFeature` is saying "create a new branch called
*newFeature*".

### Prepare for a Pull Request
Now we are ready to submit our work.

```bash

$ git fetch upstream
$ git checkout master
$ git merge upstream/master

```

If there are any new commits, you'll need to rebase your branch.

```bash

$ git checkout newFeature
$ git rebase master

```
