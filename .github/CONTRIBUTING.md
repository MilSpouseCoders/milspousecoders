# Contribution Guide

## Quick Start

### Find something to work on
You can view our current issues on Github. Issues might have one or more of the
following special tags:
- ready - just like it sounds, the issues is ready for someone to start working
  on it
- first-timers-only - reserved for those looking to make their first open source
  contribution
- beginner friendly - a good place to start if you are a new developer or are
  new to this project

Once you find something you want to work on, let us know by commenting on the
issue or assigning it to yourself. Also, add the "in progress" label and if the
issue has a "ready" label, remove it.

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
