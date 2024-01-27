
ROOT_DIR="$(pwd)"

# Source ARM environment variables
source .local/arm_env.sh

function drh {
    if [[ -z "${@}" ]]; then
        echo "No image name provided. Please provide an image name and, optionally, commands."
    else
        docker run -it --rm -v "$(pwd):$(pwd)" -w "$(pwd)" "${@}"
    fi
}

function tooling_image {
    local command_str="${@}"
    drh \
      -v "${ROOT_DIR}/.config/terraform:/root/.terraform.d" \
      -v "${ROOT_DIR}/.config/azure:/root/.azure" \
      mattwiley/tf:az-01-311689b ${command_str}
}


alias terraform="tooling_image terraform"
alias tf="terraform"

alias az="tooling_image az"