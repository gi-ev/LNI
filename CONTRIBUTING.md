# Contributing

You can report bugs and request features using the [issues page](https://github.com/gi-ev/lni/issues).

We love code contributions.
You can easily work on the code if you have a GitHub account ([get one](https://github.com/join)).
For that, please [fork the repository](https://help.github.com/articles/fork-a-repo/), work on the code, and submit a [pull request](https://help.github.com/articles/about-pull-requests/).

## LaTeX hints

We base on [reitzig's TeXLive Docker Images](https://github.com/reitzig/texlive-docker), which are small.
They require each new package listed in `Texlivefile`.
Thus, if you add a new LaTeX package, please also add it into that file.

You can have a full `bash` environment to experiment by using following command (assuming you are on Windows and checked out the repository at `c:\git-repositories\LNI`):

    docker run -it --rm -v c:\git-repositories\LNI:/work/src reitzig/texlive-base:2023.1 work bash

After `cd /work/src`, you are in the directory hosting `lni.dtx` and all other files.

You can check successful generation of `lni.cls` based on `lni.dtx` using following command:

    docker run --rm -v c:\git-repositories\LNI:/work/src reitzig/texlive-base:2023.1 work

⚠ Running that command overwrites `lni.cls` (based on `lni.dtx`), so be careful. ⚠

## CI checks

We have a GitHub workflow running, which checks the complete build using that Docker image.

## Hints on GitHub usage

Take a look at GitHub's excellent overview on the [GitHub flow](https://guides.github.com/introduction/flow/index.html).
The [Feature Branch Workflow](https://de.atlassian.com/git/tutorials/comparing-workflows#feature-branch-workflow) forms the basis of this kind of development.

In other words:

1. Fork the project
2. Clone the repo:

       git clone git@github.com:your-username/LNI.git

3. Create a new branch `patch` (or another speaking name)

       git checkout -b patch

4. Make your changes.
5. Commit your changes.
   Thereby, try to write a [good commit message](https://github.com/joelparkerhenderson/git_commit_message).
6. Push your changes (to your repository)
7. [submit a pull request](https://github.com/gi-ev/lni/compare/)
8. At this point you're waiting on us.
   We like to at least comment on pull requests as soon as possible.
   We may suggest some changes or improvements or alternatives.
