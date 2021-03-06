# FinditFont

Engine to add findit custom icon font to a rails project

## Installation

Add this line to your application's Gemfile:

    gem 'findit_font'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install findit_font

## Usage

Add to application.css.scss (for Saas):

```scss
@import 'findit-font';
```

## Font modification

Font files are generated using the [icomoon](http://icomoon.io/) app. The font can be modified by loading the font from the icomoon.json project file, add
additional icons from the Icomoon icon library or import icons from svg files located in lib/svg (where file name should match the icon name).
Remember to update the project file upon changes.
Download the font and copy font files to app/assets/fonts, and stylesheet to findit-font_generated.css.erb (make sure to preserve font-face declaration).

Tests can be run by executing

    rake

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

* The [Font Awesome](http://fortawesome.github.com/Font-Awesome) font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* The font is generated with icomoon.io under the [CC License (CC BY 3.0)](http://creativecommons.org/licenses/by/3.0/)
* The [Open Access icon](http://commons.wikimedia.org/wiki/File:Open_Access_logo_PLoS_transparent.svg) is licensed under the [CC License (CC0 1.0)](http://creativecommons.org/publicdomain/zero/1.0/deed.en)
* The remainder of the findit_font project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
