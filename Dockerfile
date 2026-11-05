# 1. Imagem base com Python
FROM python:3.12-slim

# 2. Evita interações durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# 3. Instala ferramentas do sistema e cliente SSH
RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-client \
    git \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 4. Instala Ansible, Pytest e Testinfra
RUN pip install --no-cache-dir \
    ansible-core \
    pytest \
    testinfra

# 5. Define o diretório de trabalho
WORKDIR /ansible

# 6. Mantém o container aberto para utilização interativa
CMD ["/bin/bash"]