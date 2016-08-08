RailsVoter
----------------------  

[![Circle CI](https://circleci.com/gh/SunnyRails/rails_voter.svg?style=shield&circle-token=aa51701fe53fc68f4cc3705b3354fda11c9a0ce2)](https://circleci.com/gh/SunnyRails/rails_voter)
[![Gem Version](https://badge.fury.io/rb/rails_voter.svg)](https://badge.fury.io/rb/rails_voter)  

Installation
----------------------

Add Rails-Voter gem to your Gemfile:

```ruby
Current version  
gem 'rails_voter', github: 'SunnyRails/rails_voter'  

RubyGems version (0.2.1)
gem 'rails_voter'  
```

Run `bundle install`

Use the install generator to set up Rails-Voter:

```shell
rails g rails_voter:install
```

Update
----------------------

Run `bundle update rails_voter`

Use the update generator to set up Rails-Voter:

```shell
rails g rails_voter:update
```
Browse Rails-Voter plugin
----------------------

http://localhost:3000/rails_voter/

To insert a ballot form or display the voting result use helpers.  

erb:
``` ruby
<%= embed_ballot_form(<< Election Id >>) %>
<%= embed_voting_result(<< Election Id >>) %>
```
haml:
``` ruby
= embed_ballot_form(<< Election Id >>)
= embed_voting_result(<< Election Id >>)
```

License
----------------
This project rocks and uses MIT-LICENSE.
