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

Run:

```
./install.sh
```

The above command just adds this repo's `bin/` subdirectory to your $PATH
by appending the following to your `~/.bashrc`.

```
export PATH=/path/to/coterminal/bin:$PATH
```

After running the above, run `source ~/.bashrc` or just log out and log back in.


Inviting Someone
----------------

If you want to give a co-worker access to your terminal, SSH to it,
then run the following **outside of any tmux or screen session**:

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

If you want to invite someone but only with read-only access (that is,
all of their keyboard/mouse inputs are ignored) just append `-r` as follows:

```
coterminal-add gh:relaxdiego -r
```


Remove Someone
--------------

When you are done sharing, kick them out via:

```
coterminal-remove <username>
```
