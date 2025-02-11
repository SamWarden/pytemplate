# Pytemplate

Template for a Python project

### Instllation

Clone this template

```bash
git clone git@github.com:SamWarden/pytemplate.git appname
cd appname
git remote rename origin template
```

Add `origin`
```bash
git remote add origin GIT_URI
```

Install its dependencies
```bash
uv venv
source .venv/bin/activate
uv sync --all-groups --all-extras
```

Install pre-commit hook to automatically lint your project
```bash
pre-commit install
```

### Sync with the template

To sync changes with the template just execute
```bash
git pull template
```
