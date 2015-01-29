Puppet modules often take on the same file system structure. The
built-in puppet-module tool makes starting modules easy, but the built
in skeleton module is very simple. This skeleton is very opinionated.
It's going to assume you're going to start out with tests (both unit and
acceptance), that you care about the puppet style guide, test using Travis,
keep track of releases and structure your modules according to strong
conventions.

## Installation

As a feature, puppet module tool will use `~/.puppet/var/puppet-module/skeleton`
as template for its `generate` command. The files provided here are
meant to be better templates for use with the puppet module tool.

As we don't want to have our .git files and this README in our skeleton, we export it like this:

    git clone https://github.com/gds-operations/puppet-module-skeleton
    cd puppet-module-skeleton
    find skeleton -type f | git checkout-index --stdin --force --prefix="$HOME/.puppet/var/puppet-module/" --

## Usage

Then just generate your new module structure like so:

    puppet module generate user-module

Once you have your module then install the development dependencies:

    cd user-module
    bundle install

Now you should have a bunch of rake commands to help with your module
development, which you can get a list of by running:

    bundle exec rake -T

During development of your puppet module you might want to run your unit tests a couple of times. You can use the following command to automate running the unit tests on every change made in the manifests folder.

    bundle exec guard

## Thanks

The trick used in the installation above, and a few other bits came from
another excellent module skeleton from [spiette](https://github.com/spiette/puppet-module-skeleton)
