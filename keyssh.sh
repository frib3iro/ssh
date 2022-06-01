# Verificar se há chaves SSH
ls -al ~/.ssh

# Gerar uma nova chave SSH e adicioná-la ao ssh-agent
ssh-keygen -t ed25519 -C "rib3iro@live.com"

# Observação: Se você estiver usando um sistema legado que não é compatível com o algoritmo Ed25519, use:
# $ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Adicionar sua chave SSH ao ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Copie a chave pública SSH para a sua área de transferência.
cat ~/.ssh/id_ed25519.pub

# Testar a conexão SSH
ssh -T git@github.com
