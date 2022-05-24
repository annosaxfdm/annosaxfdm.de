<img align="right" width="200" height="200" src="./public/logo-blue.svg" alt="ANNO">

# ANNO Website

[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

Live on <https://annosaxfdm.de>.
This is the website for ANNO, Anthropological Notation Ontology.
It is a copy of the [SNIK website](https://github.com/snikproject/snik.eu), which is a copy [HITO website](https://github.com/hitontology/hitontology.eu), which is a fork of the [Hyde layout](https://github.com/poole/hyde), which itself is based on Jekyll, a static site generator.

## Setup

1. Install Ruby
2. Install Bundler
3. Use Bundler to install the dependencies

### Example for Arch Linux

    $ sudo pacman -S ruby

Add the following to your environment configuration file, such as `.profile` or `.zshrc` and reload (`source ~/.zshrc`) it:

    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    export PATH="$PATH:$GEM_HOME/bin"

Use bundler with the provided Gemfile:

    $ gem install bundler
    $ bundle install

However that resulted in the error `Bundler::GemNotFound: Could not find jekyll-4.2.1.gem for installation` in testing on one machine.

### Example for MacOS (with Homebrew)

Install Ruby:

    $ brew install ruby

Add the brew ruby path to your shell configuration.
If you're using Zsh, add the following lines to `~/.zshrc`

    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    export PATH="$PATH:$GEM_HOME/bin"

Install bundler and the gems:

    $ gem install --user-install bundler
    $ bundle install

## Preview

Switch to the `master` branch and run `bundle exec jekyll serve --incremental`.
Check if everything looks normal.

## Build and Deploy

GitHub uses Jekyll to deploy this website at a GitHub Pages server where it is reachable as <https://annosaxfdm.de>, so there is no need to build it.
If you still want to build it locally, for example because you want to host it somewhere else, run `bundle exec jekyll build (--incremental)`.
You can also manually start the the GitHub workflow in `.github/workflows/deploy.yml` to create the `static` branch and create it there, which you could then check out on a web server, if you want to use your own and not the one from GitHub Pages.

### Using Docker

If you cannot or do not want to install Ruby and the gems on your system, or there is some problem with Ruby, you can also use the Dockerfile, which should work everywhere.
Use the following commands or execute the associated script.

| goal         | command                                                            | script                     |
| ------------ | ------------------------------------------------------------------ | -------------------------- |
| build image  | docker build -t anno.de .                                          | scripts/docker-build       |
| preview page | docker run --rm --network="host" anno.de                           | scripts/docker-run-preview |
| build page   | docker run --rm -it --volume="$PWD:/usr/src/app" -it anno.de build | scripts/docker-run-build   |

## Troubleshooting

### Ruby cannot find the native extensions

#### Exemplary error message

    bundler: failed to load command: jekyll (/home/konrad/.local/share/gem/ruby/3.0.0/bin/jekyll)
    /home/konrad/.local/share/gem/ruby/3.0.0/gems/ffi-1.15.1/lib/ffi.rb:5:in `require': libffi.so.7: cannot open shared object file: No such file or directory - /home/konrad/.local/share/gem/ruby/3.0.0/extensions/x86_64-linux/3.0.0/ffi-1.15.1/ffi_c.so (LoadError)

This can happen if you already built the native extensions (e.g. via `bundle install`) with an older version of Ruby and then upgrade Ruby.
Even `bundle install` will not rebuild the native extensions in that case if they are already present.
To fix this, run `bundle pristine`.
It is also possible that you installed some dependencies using `gem install` system- or user-wide, which bundler will not overwrite by default.
In this case, even `bundle pristine` may not be enough.
In our experience, this can be fixed by deinstalling Ruby, deleting all leftover gem directories and reinstalling Ruby afterwards.

### Preview URL not working in MacOS using Docker

Docker may run in it's own virtual machine under MacOS and not thus not forward `--network="host"` to the network of the machine itself.
While the default way of port mapping in Docker using the `-p 4000:4000` gets forwarded to the local host under MacOS, this does not work with the underlying Jekyll server of this website.
Thus, there may not be a way to preview the docker build using `jekyll serve` on MacOS.
However you can still build it using Docker and use a local webserver to preview the `_site` folder.
