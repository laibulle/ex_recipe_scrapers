defmodule RecipeScrapers do
  defmodule Recipe do
    @derive [Poison.Encoder]
    defstruct [:name, :steps, :yields, :total_time, :ingredients, :image]
  end

  @base_dir Application.app_dir(:recipe_scrapers, "priv/recipe_scrapers")

  def fetch(url) do
    {res, _} =
      System.cmd(
        @base_dir <> "/.venv/bin/python3",
        ["scrapers.py", url],
        cd: @base_dir
      )

    Poison.decode(res, as: %Recipe{})
  end
end
