export interface NativeDataStorePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
