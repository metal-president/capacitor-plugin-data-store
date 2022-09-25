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

  async setStringValue(options: { key: string, value: string }): Promise<{ result: boolean }> {
    console.log('setStringValue', options);
    return {result: true};
  }

  async setBoolValue(options: { key: string, value: boolean }): Promise<{ result: boolean }> {
    console.log('setBoolValue', options);
    return {result: true};
  }

  async setIntValue(options: { key: string, value: number }): Promise<{ result: boolean }> {
    console.log('setIntValue', options);
    return {result: true};
  }

  async setDoubleValue(options: { key: string, value: number }): Promise<{ result: boolean }> {
    console.log('setDoubleValue', options);
    return {result: true};
  }

  async getStringValue(options: { key: string, default: string }): Promise<{ value: string }> {
    console.log('getStringValue', options);
    return {value: ""};
  }

  async getBoolValue(options: { key: string, default: boolean }): Promise<{ value: boolean }> {
    console.log('getBoolValue', options);
    return {value: false};
  }

  async getIntValue(options: { key: string, default: number }): Promise<{ value: number }> {
    console.log('getIntValue', options);
    return {value: 0};
  }

  async getDoubleValue(options: { key: string, default: number }): Promise<{ value: number }> {
    console.log('getDoubleValue', options);
    return {value: 0.0};
  }

  async clearValue(options: { key: string }): Promise<{ result: boolean }> {
    console.log('clearValue', options);
    return {result: true};
  }

  async allClear(): Promise<{ result: boolean }> {
    console.log('clallClearearValue');
    return {result: true};
  }
}
