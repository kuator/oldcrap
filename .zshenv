if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

export PYENV_ROOT="$HOME/.config/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
