
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BrewpageHostingSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = BrewpageHostingSDK.test()
    equal(testsdk instanceof BrewpageHostingSDK, true,
      'BrewpageHostingSDK.test() must return a client synchronously')
  })

})
