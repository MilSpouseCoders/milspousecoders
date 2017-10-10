# Contribution Guide

## Quick Start

## Summary of Git Fork and Branch Workflow

### Setup for First Time Contributors

#### Fork a copy
Fork a copy  of the [original
repository](https://github.com/MilSpouseCoders/milspousecoders) to your own
repository. Github provides a convenient button at the top right of the
repositories page.

#### Clone Your Fork
Clone your fork to your local machine, so you can start working.

```bash
$ git clone git@github.com:YOUR_USER_NAME/milspousecoders.git
```

Do be sure to replace YOUR_USER_NAME with your user name.

#### Connect the "Upstream" Repository

As people work on the project, we regularly merge their contributions into the
official repository (MilSpouseCoders/milspousecoders), also called the
"upstream" repository. You'll need to connect your local repository to the
upstream repository so that in the future you can easily sync up with the
current version of the project. You'll connect by adding a "remote":

```bash
$ git remote add upstream https://github.com/MilSpouseCoders/milspousecoders.git
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

Because you just created your repository, it is already up-to-date and you don't
need to sync up at this time. Continue on step "Do Work" below.

### General Workflow

Once you've "claimed" an issue you'd like to work, here are the steps you'll
follow:

#### Sync with the "Official" Repo

We need to make sure we're working with the most up-to-date version of the
project. To pull any changes into your local repository simply do this:

```bash
git checkout master # first, make sure you're on the master branch
git fetch upstream # download new commits from the official repo
git merge upstream/master # merge those new commits into your current branch
```

### Do Work
Now it is time to get to work on that shiny new feature.

```bash
$ git checkout master
$ git checkout -b newFeature
```

Here we again made sure we were on our master branch and then we create and
checkout a new branch called newFeature. The branch name should identify the
issue you are working on. For example issue-5 or add-contribution-instructions.

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
