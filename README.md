# Nav Helper!

This is a test of an idea to make setting the active class on navigation tabs
easier and clearer.


## This Branch

This branch attempts to set active navigation tabs based on the controller that
it's in. The mechanism is by setting classes on body that match the class of the
active nav tab, then writing scss to `@extend` the `.active` selector. Check out
the top of `application.css.scss` for the style.

The idea is that the `::SettingsController` should activate the top nav
'Settings', any controller in the `AwesomeApp` should activate the top nav
'Awesome App' and any controller in the `GreatApp` module should activate the
top nav 'Great App'. For those pages with left nav, each page should activate
the tab with it's same name, each one is in its own controller.


## Helping Out

If this solution can be made robust enough, I'd like to extract it into a gem.
But it's not as nice to use as I'd like. If you have any ideas, I'd love to hear
them. Open an Issue here to talk about it, or hit me up [over
Twitter](http://twitter.com/benhamill/).
