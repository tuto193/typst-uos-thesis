# typst-uos-thesis

This is a [typst](https://typst.app/) that follows a general set of formatting requirements. It is partly based on [typst-uwthesis](https://github.com/yangwenbo99/typst-uwthesis/tree/master)
(which itself bases on [simple-typst-thesis](https://github.com/zagoli/simple-typst-thesis).

I personally used this template for my bachelor's thesis.

## Usage
Most of the work needed for you is in `main.typ`, so just type the work there. 

The overall template is outlined in `template.typ`, which includes some other quality of life fuctions as well near the top.

Abbreviations you want included in the thesis can be edited in `glossaries.typ`. Here should be everything you _want_ to show in the final document.

Languages supported are under `languages.typ`. Just copy the main `english` dict, and fill the needed stuff with your wanted language.

## Main features
- **Multi-lingual!**:
  As of now you can set the language of your work in the `main.typ`. Currently English (`en`), German (`de`) and Spanish (`es`) are supported. I am not fluent in other languages, so add whatever you want for your individual needs.

- **Fancy tables**: Use the _cool_ talbe filling and formatting already provided, modify them or use your own. It's all `typst`, so enjoy programming it yourself easily!
- **QOL Functions**: functions for quoting using `...et. al.` for many authors (`#cite-et-al`) or citing using strings instead of labels (`#cite-string`) in case you have citation keys with characters that `typst` doesn't like!.
- **Smart numbering**: Depending on whether you want to print `onesided` or `twosided`! `onesided` printing, means that numbers are always on the right side, and `twosided` printing ensures that numbers are on the _outer_ side
  of the binding. That way, it doesn't matter what you choose, as long as the binding is on the (physical) left side of the document, numbers are always visible when scrolling through!.

## Limitations
Some special functions (in the `main.typ` file) for figures and tables need to be used, so the respective supplements (`Figure X`/`Ilustración X`, etc..) is shown properly. Feel free to modify them to your liking or create your own.

##  License
Parts of this thesis belonging to `simple-typst-thesis` are under the Apache license. Other general parts belonging to `typst-uwthesis` and used here are not (at the time of this writing) under any license,
but it might be good to cover them (at least) under the license for this project.

`typst-uos-thesis` is under the MIT license, so feel free to share and re-mixit.

The `logo.png` belongs to the [University Osnabrück](https://www.uni-osnabrueck.de/startseite/).
