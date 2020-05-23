from recipe_scrapers import scrape_me
import json
import sys

# give the url as a string, it can be url from any site listed below
scraper = scrape_me(sys.argv[1])

print(json.dumps(
    {
        "title": scraper.title(),
        "steps": scraper.instructions(),
        "image": scraper.image(),
        "ingredients": scraper.ingredients(),
        "total_time": scraper.total_time(),
        "yields": scraper.yields()
    }
))
