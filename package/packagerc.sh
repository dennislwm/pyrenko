#
# create folder dist/
alias pysetup='python setup.py sdist'
#
# Register at test.pypi.org (user and password required)
alias pyuptest='twine upload --repository-url https://test.pypi.org/legacy/ dist/*'
#
# Test pip install
alias pyintest='pip install --no-deps --index-url https://test.pypi.org/simple/ pyrenko==0.1'
#
# Test pip uninstall
alias pyuninst='pip uninstall pyrenko'
#
# Register at pypi.org (user and password required)
alias pyuplive='twine upload dist/*'
#
# Pip install
alias pyinlive='pip install pyrenko==0.1'
#
# help
alias h='help'
#
# external functions
help() {
    echo "Aliases"
    echo "  h           Help"
    echo "  pysetup     Create dist files (first step)"
    echo "  pyuplive    Upload dist to pypi.org (second step)"
    echo "  pyinlive    Pip install pyrenko (third step)"
    echo "  pyuptest    Upload dist to test.pypi.org (optional second step)"
    echo "  pyintest    Test pip install pyrenko from test.pypi.org (optional third step)"
    echo "  pyuninst    Uninstall pyrenko from test.pypi.org (optional fourth step)"
}