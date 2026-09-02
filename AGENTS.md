# Homebrew tap

This repository publishes Wess's casks and formulae.

## Layout

- `Casks/`: signed desktop applications distributed from release assets.
- `Formula/`: command-line tools built or downloaded by Homebrew.
- `.github/workflows/`: tap tests and publication automation.

## Working rules

- Treat a version, URL, and checksum as one atomic update. Verify the referenced
  release asset exists before changing a package.
- Keep class names, token names, artifact names, architectures, and install paths
  consistent with the upstream release workflow.
- Validate the exact changed package with Homebrew before reporting it ready;
  inspect `.github/workflows/tests.yml` for the current CI gate.
- Do not remove archived-but-still-shipped packages merely because their source
  checkout moved to `../attic`.
- This repository is downstream of release pipelines. Fix the producer first
  when an asset or checksum is wrong.
