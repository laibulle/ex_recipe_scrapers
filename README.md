# RecipeScrapers

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `recipe_scrapers` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:recipe_screapers, git: "https://github.com/laibulle/ex_recipe_scrapers.git", branch: "master"},
  ]
end
```

```elixir
RecipeScrapers.fetch("https://www.allrecipes.com/recipe/158968/spinach-and-feta-turkey-burgers/")
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/recipe_scrapers](https://hexdocs.pm/recipe_scrapers).
