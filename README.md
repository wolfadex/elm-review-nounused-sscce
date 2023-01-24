SSCCEE for https://github.com/jfmengels/elm-review-unused/issues/75

To reproduce

1. Clone this repo
1. Run `npm install`
1. Run `npm run review`
1. Change the value on line 11 from `{ carl = Bar }` to `{ carl = Foo }`

Sometimes the elm-review will reports no errors and sometimes it will report

```
-- ELM-REVIEW ERROR ------------------------------------------- src/Main.elm:4:8

NoUnused.Variables: Imported module `Carl` is not used

3| import Browser
4| import Carl exposing (..)
          ^^^^
5| import Html

You should either use this value somewhere, or remove it at the location I
pointed at.

I think I can fix this. Here is my proposal:

3| import Browser
4| import Carl exposing (..)
5| import Html

? Do you wish to apply this fix? › (Y/n)
```

If you change the import on line 4 from `import Carl exposing (..)` to `import Carl exposing (Foo(..))` you no longer get this error even after changing the value on line 11 to or from `Foo` or `Bar`.
