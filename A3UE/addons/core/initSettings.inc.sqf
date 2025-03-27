[
    "ramsey_anti_hide_hints", // Unique setting name.  Matches resulting variable name
    "CHECKBOX", // Type of setting.  Can be “CHECKBOX”, “EDITBOX”, “LIST”, “SLIDER”, “COLOR” or “TIME”
    ["Disable all hints", "Disables the hints from appearing during an missions lifetime"], // Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
    "ANTISTASI", // Category Name
    false, // Default Value
    true, // 1: all clients share the same setting, 2: setting can’t be overwritten (optional, default: 0) <BOOL, NUMBER>
	{}, // Script to execute when setting is changed.  (optional) <CODE>
    false // Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;