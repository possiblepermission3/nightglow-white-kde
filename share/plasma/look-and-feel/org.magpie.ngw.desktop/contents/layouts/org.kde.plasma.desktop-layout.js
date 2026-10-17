var panel = new Panel
var panelScreen = panel.screen

panel.location = "bottom";
panel.height = 32
panel.alignment = "center";
geo = screenGeometry(panelScreen);
panel.lengthMode = "fillavailable"
panel.floating = false

panel.addWidget("org.kde.plasma.kickoff")
panel.addWidget("org.kde.plasma.showdesktop")
panel.addWidget("org.magpie.nightglow.separator")

let taskBar = panel.addWidget("org.kde.plasma.taskmanager")
taskBar.currentConfigGroup = ["General"]
taskBar.writeConfig("launchers",["preferred://browser", "preferred://filemanager","applications:org.kde.konsole.desktop"])
taskBar.writeConfig("onlyGroupWhenFull", false)

panel.addWidget("org.kde.plasma.pager")
panel.addWidget("org.magpie.nightglow.separator")

var langIds = ["as",    // Assamese
               "bn",    // Bengali
               "bo",    // Tibetan
               "brx",   // Bodo
               "doi",   // Dogri
               "gu",    // Gujarati
               "hi",    // Hindi
               "ja",    // Japanese
               "kn",    // Kannada
               "ko",    // Korean
               "kok",   // Konkani
               "ks",    // Kashmiri
               "lep",   // Lepcha
               "mai",   // Maithili
               "ml",    // Malayalam
               "mni",   // Manipuri
               "mr",    // Marathi
               "ne",    // Nepali
               "or",    // Odia
               "pa",    // Punjabi
               "sa",    // Sanskrit
               "sat",   // Santali
               "sd",    // Sindhi
               "si",    // Sinhala
               "ta",    // Tamil
               "te",    // Telugu
               "th",    // Thai
               "ur",    // Urdu
               "vi",    // Vietnamese
               "zh_CN", // Simplified Chinese
               "zh_TW"] // Traditional Chinese

if (langIds.indexOf(languageId) != -1) {
    panel.addWidget("org.kde.plasma.kimpanel");
}

panel.addWidget("org.kde.plasma.systemtray")
var dClock = panel.addWidget("org.kde.plasma.digitalclock");
dClock.writeConfig("showDate", false);

var dLogout = panel.addWidget("org.kde.plasma.lock_logout");
dLogout.writeConfig("show_lockScreen", false);
