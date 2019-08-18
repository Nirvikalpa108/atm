# Bank ATM

## Summary

This is a simple bank 'ATM' application.

## Setup 

Ensure you have installed [Ruby](https://www.ruby-lang.org/en/downloads/), [Rubygems](https://rubygems.org/pages/download) (a package manager framework for Ruby) and [Bundler](https://bundler.io/) (a Ruby gem management gem).

## Run the test suite 
1. Fork this repo (for instructions, [see here](https://help.github.com/en/articles/fork-a-repo))

1. Navigate to the repo directory in your terminal (check out these links for [mac](https://www.imore.com/how-use-terminal-mac-when-you-have-no-idea-where-start), [windows](https://www.lifewire.com/command-prompt-2625840) or [linux](https://www.howtogeek.com/140679/beginner-geek-how-to-start-using-the-linux-terminal/) for instructions)

1. Install gems: ```bundle install```

1. Run tests: ```rspec spec```

### User stories

* User can make deposits and withdrawals.
* User should not be able to withdraw more money than they have in their account.
* User can print their account statement  which should show date, amount withdrawn/deposited and balance.
* The account statement should be printed in descending order (latest date first).
* User can print their account statements for a specific month.
