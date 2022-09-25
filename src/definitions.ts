export interface NativeDataStorePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;

  setStringValue(options: { key: string, value: string }): Promise<{ result: boolean }>;
  setBoolValue(options: { key: string, value: boolean }): Promise<{ result: boolean }>;
  setIntValue(options: { key: string, value: number }): Promise<{ result: boolean }>;
  setDoubleValue(options: { key: string, value: number }): Promise<{ result: boolean }>;

  getStringValue(options: { key: string, default: string }): Promise<{ value: string }>;
  getBoolValue(options: { key: string, default: boolean }): Promise<{ value: boolean }>;
  getIntValue(options: { key: string, default: number }): Promise<{ value: number }>;
  getDoubleValue(options: { key: string, default: number }): Promise<{ value: number }>;

  clearValue(options: { key: string }): Promise<{ result: boolean }>;
  allClear(): Promise<{ result: boolean }>;
}
