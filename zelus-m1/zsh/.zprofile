eval "$(/opt/homebrew/bin/brew shellenv)"

eval $(/opt/homebrew/bin/brew shellenv)  # Apple silicon (Arm-based)
export PYENV_ROOT="$HOME/.pyenv"         # pyenv/pyenv-virtualenv
export PATH=$(pyenv root)/shims:$PATH    # pyenv/pyenv-virtualenv
export ARTIFACTORY_USER=cthayer
export ARTIFACTORY_PASSWORD={password}
export PATH="$HOME/.poetry/bin:$PATH" # poetry
