Folder: /app
========================

This is an important folder to the application "shell". This folder contains all of the core code for the app, *and should be considered off-limits* to most developers.

Any section within the app shouldn't have to reference or create anything inside of this area, as all of that will be done by the application itself. References will be available to each section, component, etc if necessary.

Examples include:
* the server api module
* app storage module (eg, dmc autostore)
* core UI navigation (eg, tab bars, etc)
