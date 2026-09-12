import { BrewpageHostingEntityBase } from '../BrewpageHostingEntityBase';
import type { BrewpageHostingSDK } from '../BrewpageHostingSDK';
import type { Control } from '../types';
import type { Stat, StatLoadMatch } from '../BrewpageHostingTypes';
declare class StatEntity extends BrewpageHostingEntityBase<Stat> {
    constructor(client: BrewpageHostingSDK, entopts: any);
    make(this: StatEntity): StatEntity;
    load(this: any, reqmatch?: StatLoadMatch, ctrl?: Control): Promise<StatEntity>;
}
export { StatEntity };
