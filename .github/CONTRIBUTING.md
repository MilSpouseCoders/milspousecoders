# Contribution Guide

We are excited that you're thinking about contributing to our project! We
welcome contributions from developers, designers, copy-editors, and others of
all skill levels! If you need help getting started, just let us know :slightly-smiling-face:

## Quick Start

If you are new to rails, we recommend that you check out the [setup
guide](https://gorails.com/setup) written by the team at GO RAILS. When you get
to the section that has you create a new Rails application, stop, come back
here, and go through the steps in the "Setup for First Time Contributors"
section below.

1. Find an issue (to-do: merge changes from other PR here)
2. Make changes and open pull request, following the "Fork and Branch" workflow.
   We have instructions below for those who need them.
3. Before opening a pull request, run `bundle exec rake`. This will run all of
   the specs and linters and will also calculate the test coverage.
4. After opening the pull request, verify that all checks pass and that there
   are no merge conflicts.
5. You can expect to hear back from us within a week. If you haven't heard from
   us by then, feel free to send us a notification by commenting on the pull
   request :slightly-smiling-face:

## Summary of Git Fork and Branch Workflow

Below, we give basic instructions on how to collaborate using the "fork and
branch" workflow. For more in-depth instructions, check out [Udacity's course on
git and GitHub](https://classroom.udacity.com/courses/ud775) or read [the
forking workflow section](
  https://www.atlassian.com/git/tutorials/comparing-workflows#forking-workflow)
of Atlassian's "Comparing Workflows" tutorial.

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

Do be sure to replace YOUR_USER_NAME with your user name. As with most Rails
apps, you should run `bin/setup` to install the gems used by this project and to
get the database setup.

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
$ git checkout master # first, make sure you're on the master branch
$ git fetch upstream # download new commits from the official repo
$ git merge upstream/master # merge those new commits into your current branch
```

### Do Work
Now it is time to get to work on that shiny new feature.

```bash
$ git checkout master
$ git checkout -b new-feature
```

Here we again made sure we were on our master branch and then we create and
checkout a new branch called newFeature. The branch name should identify the
issue you are working on. For example issue-5 or add-contribution-instructions.

### Prepare for a Pull Request
Now we are ready to submit our work. Start by pushing your new branch to your
fork:

```bash
$ git push origin new-feature
```

Next, navigate to your fork on GitHub. You should see a notification that says
something "Hey we noticed that you recently pushed a new branch". In that
notification, there is a link you can use to create a new pull request. Click on
that and make sure that the base repo for the comparison is the *master* branch
on the *MilSpouseCoders/milspousecoders* repo and the other repo listed is the
feature branch on your fork. If your changes can be automatically merged, then
just fill out any details you'd like to and then submit the pull request.

If you see merge conflicts, you should still submit the pull request, but you
have some more work to do before it is ready for review. First, we need to
update our local master branch with the changes from the official, upstream
repo:

```bash
$ git checkout master
$ git pull upstream master
```

Next, we need to merge these new changes into the branch we're working on:

```bash
$ git checkout new-feature
$ git merge master
```

This will result in a merge conflict. Open up your text editor and resolve the
conflict. Once you're done, commit your changes and push your changes to your
fork:

```bash
$ git commit -a
$ git push origin new-feature
```

This will automatically update the pull request, and it should now say that the
merge can be performed automatically.
