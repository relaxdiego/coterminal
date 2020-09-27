Co-Worker
=========

Invite your coworker to work with you on a remote terminal via tmux.


Requirements
------------

I use this on Ubuntu. YMMV in other OS and distros.


Installation
------------

After cloning this repo, add the bin directory to your $PATH. For example:

```
export PATH=/path/to/this/repo's/bin:$PATH
```


Usage
-----

If you want to give a co-worker access to your remote machine, SSH to it,
then run the following outside of any tmux or screen session:

```
coworker-add <gh|lp>:<username>
```

Where gh stands for GitHub and lp stands for Launchpad and username is
your co-worker's username in GitHub or Launchpad. For example, if you
want to invite relaxdiego (GitHub) to your machine, run:

```
coworker-add gh:relaxdiego
```

Afterwards, tell them to SSH to your machine via:

```
ssh <username>@<host>
```

When you are done working with your coworkers, kick them out via:

```
coworker-remove <username>
```
