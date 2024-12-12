# Usa a imagem oficial do PufferPanel
FROM pufferpanel/pufferpanel:latest

# Instala o pacote libcap para usar setcap
RUN apk add --no-cache libcap

# Concede permissões específicas para administração de rede
RUN setcap 'cap_net_admin+ep' /usr/sbin/pufferpanel

# Define o diretório de trabalho
WORKDIR /var/lib/pufferpanel

# Expõe a porta 8080 para o painel
EXPOSE 8080

# Comando padrão ao iniciar o container
CMD ["pufferpanel"]
