# BrewpageHosting SDK configuration


def make_config():
    return {
        "main": {
            "name": "BrewpageHosting",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://brewpage.app/api",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "stat": {},
            },
        },
        "entity": {
      "stat": {
        "fields": [
          {
            "active": True,
            "name": "total_resource",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "total_view",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "views_today",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
        ],
        "name": "stat",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {},
                "method": "GET",
                "orig": "/stats",
                "parts": [
                  "stats",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
