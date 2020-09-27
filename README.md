<p align="center">
  <img src="https://raw.githubusercontent.com/relaxdiego/coterminal/main/logo.png">
</p>

<p align="center">
Share a terminal with a co-worker.
</p>


Requirements
------------

I've tested this on Ubuntu only. YMMV on other OS and distros.


Installation
------------

After cloning this repo, add its `bin/` subdirectory to your $PATH. For example:

```
export PATH=/path/to/this/repo/bin:$PATH
```


Inviting Someone
----------------

If you want to give a co-worker access to your terminal, SSH to it,
then run the following outside of any tmux or screen session:

```
coterminal-add <gh|lp>:<username>
```

Where gh stands for GitHub and lp stands for Launchpad and username is
your co-worker's username in GitHub or Launchpad. For example, if you
want to invite relaxdiego (GitHub) to your machine, run:

```
coterminal-add gh:relaxdiego
```


Afterwards, tell them to SSH to your machine:

```
ssh <username>@<your-machine's-address>
```

Run `coterminal-add` for every co-worker you want to share your terminal
with.


Read-only Mode
--------------

If you want to invite someone but only want give them read-only access
(that is, all of their keyboard/mouse inputs are ignored) just append `-r`:

```
coterminal-add gh:relaxdiego -r
```


Remove Someone
--------------

When you are done sharing, kick them out via:

```
coterminal-remove <username>
```
