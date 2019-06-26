# Install Git and Set up Github

*This page describes how to set up a github account and create your own repository, see this [guide](gitsetup.md) for how to pull from [fan](http://fanwangecon.github.io)'s [Math4Econ](https://fanwangecon.github.io/Math4Econ/) or [other](https://github.com/FanWangEcon) repositories.*

## Github Install and Create a Repository on Github.com

Replace my email below

1. Install [GIT](https://git-scm.com/)
2. Install [Atom](https://atom.io/) as a git/github friendly editor
3. Set up an account on github.com
4. Create a new repository under your account's repository tab, for example: [https://github.com/FanWangEcon?tab=repositories](https://github.com/FanWangEcon?tab=repositories); choose to *Initialize this repository with a README*.

## Set up Local Security to Pull and Push to Github

1. Open up git bash and enter the command below.
    - when prompted "enter file in which to save the key", press enter, this will automatically put the rsa key you generate in the default folder below under *~/.ssh/* with file name *id_rsa.pub*.
    - when prompted for passphrase, enter the password you like when you see a key icon. You can't see the password that you'll type.
```bash
ssh-keygen -t rsa -C "wangfanbsg75@live.com"
```
2. Copy the rsa key you just created (use cat instead of clip for mac users).
    - You can also go to the .ssh folder under your root directory and find the id_rsa.pub file directly
    - If you don't know where your root is, open up *git bash*, type in *cd ~/*, and then type in *pwd*, what appears on the screen is your root directory
```bash
clip < ~/.ssh/id_rsa.pub
```
3. Go to your github account, under user settings, click on *SSH and GPG Keys*, choose to create a *New SSH Key*, paste the text we got from *id_rsa.pub* in the space for key, and provide a title.
4. Then, also do this for Windows:
```bash
cd ~/.ssh; ls -l
chmod 700 id_rsa
```
For MacOS and Linux users, follow the [reference](https://help.github.com/articles/connecting-to-github-with-ssh/)

## Local and Github Sync Pull and Push

### Pull

We initialized our new repository on github.com with a README.md file, so we can pull what we created to the local computer now that we have the same id_rsa.pub key on github as well as locally.

Enter the passphrase you generated previously when prompted.

In git bash, do the following:

```bash
mkdir ~/ClusterEstimate
cd ~/ClusterEstimate
git init
git config --global user.name "Fan Wang"
git config --global user.email wangfanbsg75@live.com
git config --list
git remote add github git@github.com:FanWangEcon/ClusterEstimate.git
git pull github master
```

### Push

Make some changes in your README.md file, and now you can push back.

If you use Atom, the files you have edited will appear yellow, and new files you have created will appear green.

1. *git add -A*: this is the same as clicking stage all in the git pane in *Atom*
2. *git commit -m "commit message"*: this is the same as writing a commit message and clicking commit to master under *Atom*
3. *git push -u github master*: this pushes the local changes to github, the same as clicking on push in *Atom*
4. do these steps first under *git bash* once, afterwards, you can click on fetch and pull inside *atom* without having to go to *git bash*

```bash
git add -A
git commit -m "commit message"
git push -u github master
```
