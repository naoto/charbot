# Charbot

Markov Chain Bot Framework

## Installation

Clone git repository

```shell
$git clone https://github.com/naoto/charbot.git
```

Add this line to your application's Gemfile:

```ruby
gem 'charbot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install charbot

## Usage

### Parse Sentence.
create file to `data/talk`

1.example

  ```
  すもももももももものうち
  きしゃがきしゃできしゃにきしゃ
  ```
2. parase

  ```shell
  $bundle exec exe/parse
  ```

### Make Sentence.

```shell
$bundle exec exe/charbot
```
