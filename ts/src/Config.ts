
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }


  main = {
    name: 'ProjectName',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: 'https://brewpage.app/api',

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      stat: {
      },

    }
  }


  entity = {
    "stat": {
      "fields": [
        {
          "active": true,
          "name": "total_resource",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "total_view",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "views_today",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        }
      ],
      "name": "stat",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {},
              "method": "GET",
              "orig": "/stats",
              "parts": [
                "stats"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

