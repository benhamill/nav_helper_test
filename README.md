# Nav Helper!

This is a test of an idea to make setting the active class on navigation tabs
easier and clearer.


## Try It

Clone down the repo, `bundle` it up, run `rails s` and click the navigation
links at the top. It'll be nothing special to look at; that's the point.


## How It Works

In your controller layer somewhere, you call `NavHelper.set_active` and pass it
some key corresponds to the tab you want active. This can be on a per-action
basis, or in a `before_filter` for a whole controller or whatever. Check out the
`WelcomeController` for an example.

In your application layout (or wherever your nav bar lives) you set the class of
each `<li>` containing a nav link to `NavHelper.for(:some_key)`. This will
return `nil` for all but the key you set active in the controller layer. For
haml and slim, this means there will be no class attribute (unless you set
another as well). Check out the application layout for an example.

At this first attempt, I had to make a `before_filter` in the
`ApplicationController` that set the active tab to something that wasn't a valid
key so that the last active tab wouldn't leak across requests. I'd like to be
able to do away with that, but I'll need to learn more about how Rails scopes
variables during requests and probably do some arcane shit to keep the API
simple like it is.


## Helping Out

If this solution can be made robust enough, I'd like to extract it into a gem.
But it's not as nice to use as I'd like. If you have any ideas, I'd love to hear
them. Open an Issue here to talk about it, or hit be up [over
Twitter](http://twitter.com/benhamill/).
