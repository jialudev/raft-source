# Temporary dark Web skin

The `codex/web-dark` branch adds a dark-only Web interface to the
`v1.13.0-source.1` snapshot. `main` remains an upstream mirror.

The existing `raft-ui` elegant dark theme supplies component tokens.
`src/dark.css` adapts legacy white/black classes, tinted surfaces, borders,
focus indicators and scrollbars. The shell, PWA chrome, emoji picker and
sandboxed Mermaid diagrams use the same dark appearance. Images and videos
retain their original colors; no inversion filter is used.

This branch changes the Web package only. API, Computer, authentication,
storage and database migrations retain their upstream behavior.

## Build for an existing self-hosted instance

Use the Node and pnpm versions pinned by this repository. After installing
the Web workspace dependencies, run from the repository root:

```sh
VITE_API_URL=https://your-raft.example bash packages/web/scripts/build-selfhost.sh
```

Publish `packages/web/dist` using your existing static Web server. Keep a
backup of the previous build and its hashed assets so open tabs can finish
loading their original chunks. The helper includes the source fonts that
the flattened stylesheet references.

When upstream publishes full dark-mode support, build that release in a new
branch and replace this temporary skin. Keep `main` synchronized independently;
do not apply these overrides automatically to a newer theme system.
