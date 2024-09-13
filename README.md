# Try Mojo

<a href='https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:alexbechmann/try-mojo.git'><img src='https://img.shields.io/static/v1?label&message=Open%20in%20Dev%20Container&logo=visualstudiocode' alt='Open in Dev Container' height="32"></a>

## Preparation


- Install [ms-vscode-remote.remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
- **If using SSH to clone**: Add ssh key to SSH agent <https://code.visualstudio.com/remote/advancedcontainers/sharing-git-credentials>
  If you are on windows, perhaps you do not need to use the ssh-add command below.
  ```
  ssh-add ~/.ssh/id_rsa
  ```
- Open repo in vscode devcontainer with:

  - CTRL+SHIFT+P -> Dev-Containers: Clone Repository in Named Volume
  - Paste repo HTTPS or SSH url
  - Choose volume name
  - Open terminal inside vscode to get a shell inside devcontainer

## Development

```bash
make dev
```