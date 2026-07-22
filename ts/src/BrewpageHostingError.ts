
import { Context } from './Context'


class BrewpageHostingError extends Error {

  isBrewpageHostingError = true

  sdk = 'BrewpageHosting'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  BrewpageHostingError
}

