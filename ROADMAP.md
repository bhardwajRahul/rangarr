# Roadmap

This document reflects the current direction of Rangarr. No dates are attached — items move when they're ready.

## In Progress

- **Season pack support for Sonarr** — send one `SeasonSearch` per season instead of individual episode searches.

## Planned

- **Season pack threshold** — search as a season pack only when a minimum number or ratio of episodes in a season are missing, falling back to individual episode searches otherwise.
- **Windows compatibility** — fix `time.tzset()` crash on startup when running Python directly on Windows (not applicable to Docker containers).
- **Plain HTTP warning** — warn when an instance URL uses `http://` and API keys would be sent unencrypted.
- **Tag-based filtering** — allow or exclude items from searches based on tags set in your \*arr instances.
- **Whisparr v3 support**
- **Readarr support**

## Out of Scope

- Telemetry, analytics, or any external connections beyond your configured \*arr instances.
- A database or persistence layer.
- A web UI or dashboard.
