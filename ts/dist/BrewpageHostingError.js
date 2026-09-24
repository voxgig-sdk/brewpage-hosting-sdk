"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BrewpageHostingError = void 0;
class BrewpageHostingError extends Error {
    isBrewpageHostingError = true;
    sdk = 'BrewpageHosting';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.BrewpageHostingError = BrewpageHostingError;
//# sourceMappingURL=BrewpageHostingError.js.map