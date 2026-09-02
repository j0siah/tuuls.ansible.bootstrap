# Ansible: bootstrap

## 1. About

This repository is used to store the bare minimum instructions and scripts to bootstrap an _Ansible_ installation on Linux, macOS, and Windows.

## 2. Usage

This repository is intended to be used for initial bootstrapping of _Ansible_ to self-manage a device.

## 3. Structure

Instructions for bootstrapping each platform are stored in individual files following the format `bootstrap.<PLATFORM NAME>.md`, all lowercase.

```
REPO_ROOT
    |
    | ** macOS specific bootstrap instructions
    +- bootstrap.macos.md
    +- README.md
```

_NOTE: Diagram structure based on format used in Linux source code
[(1)](#5-references)_

## 4. See Also

### 4.1. Apple

- Apple Remote Desktop User Guide (About systemsetup in Remote Desktop): <https://support.apple.com/guide/remote-desktop/about-systemsetup-apd95406b8d/mac>
- Installing the command-line tools (Apple Developer): <https://developer.apple.com/documentation/xcode/installing-the-command-line-tools>

### 4.2. Markdown

- GitHub Flavored Markdown - Spec: [webpage](https://github.github.com/gfm/)
- Github Flavored Markdown - Link Reference Definitions: <https://github.github.com/gfm/#link-reference-definitions>
- GitHub Flavored Markdown - Reference Links: <https://github.github.com/gfm/#reference-link>

### 4.3. Diagrams

- asciidiagrams.github.io (Collection of example diagrams): <https://asciidiagrams.github.io/>
- IETF Author Resources: <https://authors.ietf.org/diagrams>
- https://asciiflow.com (Browser based ASCII-art diagramming tool) <https://asciiflow.com>

### 4.4. Style Guidance

- IETF Authors Resources: Reference Style Guidance <https://authors.ietf.org/en/reference-style-guidance>
- IETF Style Guide: <https://www.rfc-editor.org/authors/rfc-style-guide/>
- Chicago Manual of Style: <https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html>
- mmark: Citations <https://mmark.miek.nl/post/syntax/#citations>

## 5. References

1. Linux Directory Structure <https://github.com/torvalds/linux/blob/67d7c3023a672c2b73d19d6d23684df670fce648/sound/soc/sh/rcar/core.c#L36-L91>
