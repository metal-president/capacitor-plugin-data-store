import { WebPlugin } from '@capacitor/core';

import type { NativeDataStorePlugin } from './definitions';

export class NativeDataStoreWeb
  extends WebPlugin
  implements NativeDataStorePlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
