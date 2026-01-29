# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

---

## [1.0.0] - 2026-01-28 - Repository Initialization

- Inital Repo creation

### Added

#### ./.bashrc

- Added Initial Setup, Aliases and Directory shortcuts

#### CHANGELOG.md

- Added Standard Changelog content for a Gitrepo

#### LICENSE.txt

- Added Creative Commons License. See file for more info

#### README.md

- Added Standard README content for a Project.
- Added Initial Project Specific details.

#### ./scripts/setup.sh

- Added Shell Script to automate initial setup of symlinks for:
    - ./bashrc
    - ./bash_profile

### Notes

---

## Template for Future Entries

```markdown
## [Version] - YYYY-MM-DD - Version title

NOTE: Version title should summarize the changes made, and/or features added

### Added

- New features or functionality

### Changed

- Changes to existing functionality

### Deprecated

- Features that will be removed in future versions

### Removed

- Features that have been removed

### Fixed

- Bug fixes

### Security

- Security-related changes
```

---

## Guidelines for Updating

### When to Update
- **Before committing:** Update `[Unreleased]` section with your changes
- **After deployment:** Move changes from `[Unreleased]` to a new version section
- **Tag releases:** Use Git tags to match changelog versions

### How to Describe Changes

#### Good Examples ✅
```markdown
### Added
- Add new "Status" dropdown to client search form with Active/Inactive options
- Implement email notification for failed CSV imports

### Fixed
- Fix date range validation on report generation page
- Resolve null reference exception when exporting empty search results
```

#### Poor Examples ❌
```markdown
### Added
- Stuff
- Made changes to forms

### Fixed
- Bug fix
```

### Version Numbers

Follow Semantic Versioning (MAJOR.MINOR.PATCH):
- **MAJOR:** Breaking changes (rare for this app)
- **MINOR:** New features (e.g., new dropdown, new report)
- **PATCH:** Bug fixes and small improvements

Examples:
- `1.0.0` → `1.1.0`: Added new search feature
- `1.1.0` → `1.1.1`: Fixed bug in search feature
- `1.1.1` → `2.0.0`: Major UI overhaul (after hardware upgrade)

---

## Deployment History

Use this section to track production deployments:

```markdown
### YYYY-MM-DD - Version X.Y.Z - [Brief Description]
**Deployed by:** [Your Name]
**Deployment time:** HH:MM [Timezone]
**Downtime:** None / X minutes
**Rollback plan:** Git tag vX.Y.Z-previous
**Changes included:**
- Change 1
- Change 2
**Tested by:** [Name]
**Approved by:** [Client Name]
**Notes:** [Any relevant notes about the deployment]
```

Example:

```markdown
### 2024-12-15 - Version 1.1.0 - Added Search Filters
**Deployed by:** [Your Name]
**Deployment time:** 18:00 EST (after business hours)
**Downtime:** None
**Rollback plan:** Git tag v1.0.0
**Changes included:**
- Added "Date Range" filter to client search
- Added "Status" dropdown (Active/Inactive)
- Fixed export bug for empty results
**Tested by:** [Your Name] on dev server
**Approved by:** [Client Contact] on 2024-12-14
**Notes:** Deployment completed successfully. No issues reported during first day of use.
```

---

## Bug Tracking

For significant bugs discovered and fixed:

```markdown
### Bug #XXX - [Brief Description]
**Reported:** YYYY-MM-DD
**Severity:** Critical / High / Medium / Low
**Description:** [What went wrong]
**Steps to reproduce:**
1. Step 1
2. Step 2
**Root cause:** [Technical explanation]
**Fixed in:** Version X.Y.Z
**Fixed by:** [Developer name]
```

---

## Notes

- Keep entries concise but informative
- Link to Git commit hashes for significant changes
- Update before each deployment
- Archive old entries after 2 years (move to CHANGELOG-ARCHIVE.md)
- Use this as communication tool with client

---

**Maintained by:** Karl Chvojka 
**Last Updated:** 2026-01-28
