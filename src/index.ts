import { registerPlugin } from '@capacitor/core';

import type { NativeDataStorePlugin } from './definitions';

const NativeDataStore = registerPlugin<NativeDataStorePlugin>(
  'NativeDataStore',
  {
    web: () => import('./web').then(m => new m.NativeDataStoreWeb()),
  },
);

export * from './definitions';
export { NativeDataStore };
