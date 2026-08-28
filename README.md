# Ansible: bootstrap

## 0. About

This repository is used to store the bare minimum scripts to bootstrap an _Ansible_ installation on Linux, macOS, and Windows.

## 1. Usage

This repository is intended to be used for initial bootstrapping of _Ansible_ to self-manage a device. 

## 2. Structure

All extensions reside in their own directories under the `src` directory. Extension _Configuration files_ are stored under the `src/<EXTENSION NAME>/config/<CONFIG NAME>` The name of the extension config is the directory containing the `config.json` file. All _Configuration files_ are named `config.json`

```
REPO_ROOT
    |
    +- src
    |
    | ** Name of the extension
    +- <EXTENSION NAME>
    |    | 
    |    | ** Per extension config directory
    |    +- config
    |    |    |
    |    |    | ** The name of the configuration is the directory name
    |    |    +- <CONFIG NAME>
    |    |    |    | Cross-Platform (macOS, Linux) configuration
    |    |    |    +- config.json
    |
    | ** Makefile includes basic config for CI-less usage
    +- Makefile
    +- README.md
```

_NOTE: Diagram structure based on format used in Linux source code
[(1)](#4-references)_


## 3. See Also

### 3.1. Apple

- Apple Remote Desktop User Guide (About systemsetup in Remote Desktop): <https://support.apple.com/guide/remote-desktop/about-systemsetup-apd95406b8d/mac>
- Installing the command-line tools (Apple Developer): <https://developer.apple.com/documentation/xcode/installing-the-command-line-tools>

### 3.2. Markdown

- GitHub Flavored Markdown - Spec: [webpage](https://github.github.com/gfm/)
- Github Flavored Markdown - Link Reference Definitions: <https://github.github.com/gfm/#link-reference-definitions>
- GitHub Flavored Markdown - Reference Links: <https://github.github.com/gfm/#reference-link>

### 3.3. Diagrams

- asciidiagrams.github.io (Collection of example diagrams): <https://asciidiagrams.github.io/>
- IETF Author Resources: <https://authors.ietf.org/diagrams>
- https://asciiflow.com (Browser based ASCII-art diagramming tool) <https://asciiflow.com>

### 3.4. Style Guidance
- IETF Authors Resources: Reference Style Guidance <https://authors.ietf.org/en/reference-style-guidance>

## 4. References

1. Linux Directory Structure <https://github.com/torvalds/linux/blob/67d7c3023a672c2b73d19d6d23684df670fce648/sound/soc/sh/rcar/core.c#L36-L91>
2. Ansible: Installation Guide <