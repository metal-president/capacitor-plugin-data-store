# data-store

native data store

## Install

```bash
npm install data-store
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`setStringValue(...)`](#setstringvalue)
* [`setBoolValue(...)`](#setboolvalue)
* [`setIntValue(...)`](#setintvalue)
* [`setDoubleValue(...)`](#setdoublevalue)
* [`getStringValue(...)`](#getstringvalue)
* [`getBoolValue(...)`](#getboolvalue)
* [`getIntValue(...)`](#getintvalue)
* [`getDoubleValue(...)`](#getdoublevalue)
* [`clearValue(...)`](#clearvalue)
* [`allClear()`](#allclear)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### setStringValue(...)

```typescript
setStringValue(options: { key: string; value: string; }) => Promise<{ result: boolean; }>
```

| Param         | Type                                         |
| ------------- | -------------------------------------------- |
| **`options`** | <code>{ key: string; value: string; }</code> |

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------


### setBoolValue(...)

```typescript
setBoolValue(options: { key: string; value: boolean; }) => Promise<{ result: boolean; }>
```

| Param         | Type                                          |
| ------------- | --------------------------------------------- |
| **`options`** | <code>{ key: string; value: boolean; }</code> |

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------


### setIntValue(...)

```typescript
setIntValue(options: { key: string; value: number; }) => Promise<{ result: boolean; }>
```

| Param         | Type                                         |
| ------------- | -------------------------------------------- |
| **`options`** | <code>{ key: string; value: number; }</code> |

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------


### setDoubleValue(...)

```typescript
setDoubleValue(options: { key: string; value: number; }) => Promise<{ result: boolean; }>
```

| Param         | Type                                         |
| ------------- | -------------------------------------------- |
| **`options`** | <code>{ key: string; value: number; }</code> |

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------


### getStringValue(...)

```typescript
getStringValue(options: { key: string; default: string; }) => Promise<{ value: string; }>
```

| Param         | Type                                           |
| ------------- | ---------------------------------------------- |
| **`options`** | <code>{ key: string; default: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### getBoolValue(...)

```typescript
getBoolValue(options: { key: string; default: boolean; }) => Promise<{ value: boolean; }>
```

| Param         | Type                                            |
| ------------- | ----------------------------------------------- |
| **`options`** | <code>{ key: string; default: boolean; }</code> |

**Returns:** <code>Promise&lt;{ value: boolean; }&gt;</code>

--------------------


### getIntValue(...)

```typescript
getIntValue(options: { key: string; default: number; }) => Promise<{ value: number; }>
```

| Param         | Type                                           |
| ------------- | ---------------------------------------------- |
| **`options`** | <code>{ key: string; default: number; }</code> |

**Returns:** <code>Promise&lt;{ value: number; }&gt;</code>

--------------------


### getDoubleValue(...)

```typescript
getDoubleValue(options: { key: string; default: number; }) => Promise<{ value: number; }>
```

| Param         | Type                                           |
| ------------- | ---------------------------------------------- |
| **`options`** | <code>{ key: string; default: number; }</code> |

**Returns:** <code>Promise&lt;{ value: number; }&gt;</code>

--------------------


### clearValue(...)

```typescript
clearValue(options: { key: string; }) => Promise<{ result: boolean; }>
```

| Param         | Type                          |
| ------------- | ----------------------------- |
| **`options`** | <code>{ key: string; }</code> |

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------


### allClear()

```typescript
allClear() => Promise<{ result: boolean; }>
```

**Returns:** <code>Promise&lt;{ result: boolean; }&gt;</code>

--------------------

</docgen-api>
