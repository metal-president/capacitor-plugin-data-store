package com.metalhacker.plugins;

import android.util.Log;

public class NativeDataStore {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
