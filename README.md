# Grape DEMO
DEMO project for ruby grape

# Preparation steps (Ubuntu)
Install rbenv
```bash
$ sudo apt update
# install dependencies
$ sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
# rbenv
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
$ echo 'eval "$(rbenv init -)"' >> ~/.zshrc
$ source ~/.zshrc
# plugin for rbenv install
$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

Install ruby 2.6.2
```bash
$ rbenv install 2.6.2
$ rbenv global 2.6.2
# turn off generating local document
$ echo "gem: --no-document" > ~/.gemrc
$ gem install bundler
```

Install rails
```bash
$ gem install rails -v 5.2.0
$ rbenv rehash
```

# Start project
```bash
$ rails new grape_demo
```
