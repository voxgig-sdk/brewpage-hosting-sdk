
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BrewpageHostingSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await BrewpageHostingSDK.test()
    equal(null !== testsdk, true)
  })

})
