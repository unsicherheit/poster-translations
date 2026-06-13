# The Unsicherheit poster campaign translations

## About

This repository contains translations of the [Unsicherheit poster campaign]
in [GNU gettext] format.

The repository and its accompanying web pages are intended to support the
lovely people of the [Sicherheit ohne Überwachung] network in spreading the
word about their campaigns.

Contributions are always welcome.

## How to work with it

### Add another translation

Adding a translation is really easy, it's just about downloading a template file,
editing a few lines and sending it back to us:

- Download the translation template file [poster.pot](po/poster.pot) to your computer.
- Rename the file using the language code of choice, e.g. "pt.po" for translating into the Portuguese language.
  _You might want to have a look at the list of ISO 639-1 codes and the ISO 639 macro language as a reference._
- Edit the ".po" file you just created and perform the translation by assigning appropriate values to all "msgstr" variables. You might want to use either the French original or the English or German translations as reference.
  _Please use the UTF-8 character encoding when editing the translation file._
- Send the file containing the translated texts to <unknown>.
  If you know your way around Git, we also appreciate receiving pull requests to the translation file [repository on GitHub].

Thanks for your efforts!

### Technical guideline for operators

If you are used to work on the command line,
these information might help you along.


## Add a new translation file

```bash
cd po
msginit --locale pt
```

This should add a new translation file `pt.po`.

Please edit the header fields `Last-Translator`
and `Language-Team` appropriately. Then, add
the translation texts.

Please have a look at the existing
translations for reference purposes:
[po/de.po](po/de.po).

## Convert translation file formats

Convert GNU gettext PO files to [i18next] JSON format:

```bash
make
```

This should convert all `po/*.po` files to their
corresponding `json/*.json` pendants.

When adding a new translation to the `po/` directory,
please also update the `LANGUAGES` list in the `Makefile`.

It uses the [i18next-gettext-converter] module under the hood.

> [!NOTE]
>
> As the JSON files will be automatically generated from
> the PO files, there's no need to edit/update them when
> adding/correcting a translation for a specific language.
>
> Just run the command above to build the JSON files
> from the PO files.


[GNU gettext]: https://en.wikipedia.org/wiki/Gettext
[i18next]: https://www.i18next.com/
[i18next-gettext-converter]: https://github.com/i18next/i18next-gettext-converter
[repository on GitHub]: https://github.com/unsicherheit/poster-translations
[Sicherheit ohne Überwachung]: https://sicherheit-ohne-ueberwachung.org/
[Unsicherheit poster campaign]: https://twitter.com/laquadrature/status/942764007286591490
