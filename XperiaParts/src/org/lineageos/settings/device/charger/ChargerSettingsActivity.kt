/*
 * Copyright (C) 2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings.device.charger

import android.os.Bundle

import com.android.settingslib.collapsingtoolbar.CollapsingToolbarBaseActivity
import org.lineageos.settings.device.R

class ChargerSettingsActivity : CollapsingToolbarBaseActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                .replace(R.id.content_frame, ChargerSettingsFragment())
                .commit()
        }
    }

    companion object {
        private const val TAG = "ChargerSettingsActivity"
    }
}