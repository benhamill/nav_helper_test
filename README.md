# Nav Helper!

This is a test of an idea to make setting the active class on navigation tabs
easier and clearer.


## This Branch

This branch attempts to set active navigation tabs based on the controller that
it's in. The mechanism is by setting classes on body that match the class of the
active nav tab, then writing scss to `@extend` the `.active` selector. Check out
the top of `application.css.scss` for the styles.

The `<body>`'s class is set via a helper in the `ApplicationHelper`, which does
some naive parsing of the `controller_path`.

The idea is that the `::SettingsController` should activate the top nav
'Settings', any controller in the `AwesomeApp` should activate the top nav
'Awesome App' and any controller in the `GreatApp` module should activate the
top nav 'Great App'. For those pages with left nav, each page should activate
the tab with it's same name, each one is in its own controller.


## Fails

I had to copy over a portion of the `.nav-tabs` styles to do with `.active`ness,
and, though I didn't have to do the same for the `.navbar`, I wonder if it only
works because of some lucky loading order or something. In order to *guarantee*
that the elements appear `.active`, I think you'd have to copy chunks of the
Bootstrap styles over for each nav section, making sure to get the right styles
for the kind of nav elements you're using. And change your css if you changed
nav elements (for, like, `.nav-tabs` to that `.tabbable` business). It's a
brittleness.


## Helping Out

If this solution can be made robust enough, I'd like to extract it into a gem.
But it's not as nice to use as I'd like. If you have any ideas, I'd love to hear
them. Open an Issue here to talk about it, or hit me up [over
Twitter](http://twitter.com/benhamill/).
