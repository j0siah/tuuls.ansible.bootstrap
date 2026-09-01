# Bootstrapping Ansible management on macOS

## 1. About

macOS without Mobile Device Management (MDM) requires a few manual steps to be done before control can be give to Ansible.
This document contains instructions for manually bootstraping a macOS device without MDM enabled, and prior to Ansible having remote access (i.e., Remotely Managed) or being installed locally (i.e., Self Managed)

## 2. Required Setup

The following MUST be done for all _macOS_ setups.

### 2.1 Set up _Admin_ User

#### 2.1.1 Create New User

_Interface: (On-Device + GUI)_

Starting from a completely fresh macOS Device:

- Go through the mandatory user setup. Nothing special needs to be done.
- New user must be an _Admin_ for the device.

#### 2.1.2 Existing User

_Interface: (On-Device + GUI)_

- Ensure existing user is an _Admin_

### 2.2. Enable CLI Access

_Interface: (On-Device + GUI)_

_PURPOSE: This allows the rest of the setup to be done through in the Terminal_

### 3.1. Give _Terminal (Application)_ Full Disk Access

- Go to: _System Settings_ > _Privacy & Security_ > _Full Disk Access_
  - Terminal can be found in _/Applications/Utilities/Terminal_

## 4. Ansible Management

Ansible is a flexible tool. If can be used on device or remotely. Only one of the following options needs to be accomplished. Neither option is mutually exclusive with the other, BOTH _Remote_, and _Local_ management can be enabled and used together, or one can be used to bootstrap the other once it is enabled.

### 4.1. OPTION 1: Remote

_Environment: (On-Device + Shell)_

Use this option if you are planning on treating the _macOS_ device as a managed node.

Execute the following in the **Terminal**:

```shell
sudo systemsetup -setremotelogin on
```

### 4.2 OPTION 2: Local

_Interface: (On-Device + Shell) or (Remote + Shell)_

Use this option if the macOS device is going to manage itself.

#### 4.2.1 Install Ansible

To install Ansible locally, execute the following in the **Terminal**:

```shell
export bootstrap_python_version="3.14"
export bootstrap_ansible_version="2.21.3"

# Installs uv (This allows the latest versions of Python to be used without coming into conflict with Apple system packages).
curl -LsSf https://astral.sh/uv/install.sh | sh

# Load UV into the system PATH
. "$HOME/.local/bin/env"

# Create a virtual environment and install an actually maintained version of Python inside of it.
uv venv --python="${bootstrap_python_version}"

# Install ansible-core into the same virtual environment
uv pip install ansible-core=="${bootstrap_ansible_version}"
```

#### 4.2.2 Using Ansible

Before Ansible can be used they environment it is installed in must be activated.

To activate, execute the following in the **Terminal**:

```shell
# ACTIVATE
. .venv/bin/activate
```

To deactivate, execute the following in the **Terminal**:

```shell
# DEACTIVATE
deactivate
```
