defmodule RecipeScrapers do
  defmodule Recipe do
    @derive [Poison.Encoder]
    defstruct [:title, :steps, :yields, :total_time, :ingredients, :image]
  end

  def base_path() do
    case Process.whereis(Mix.State) do
      nil -> :code.priv_dir(:recipe_scrapers) |> Path.join("recipe_scrapers")
      _ -> Application.app_dir(:recipe_scrapers, "priv/recipe_scrapers")
    end
  end

  def fetch(url) do
    {res, _} =
      System.cmd(
        base_path() |> Path.join("/.venv/bin/python3"),
        ["scrapers.py", url],
        cd: base_path()
      )

    Poison.decode(res, as: %Recipe{})
  end
end
