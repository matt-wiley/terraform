

function drh {
    if [[ -z "${@}" ]]; then
        echo "No image name provided. Please provide an image name and, optionally, commands."
    else
        docker run -it --rm -v "$(pwd):$(pwd)" -w "$(pwd)" "${@}"
    fi
}

alias terraform="drh -v $(pwd)/.config/terraform:/root/.terraform.d hashicorp/terraform:1.7.1"
alias tf="terraform"

alias az="drh -v $(pwd)/.config/azure:/root/.azure mcr.microsoft.com/azure-cli:2.56.0 az"