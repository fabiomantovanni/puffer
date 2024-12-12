# Usa a imagem oficial do PufferPanel
FROM pufferpanel/pufferpanel:latest

# Define o diretório de trabalho
WORKDIR /var/lib/pufferpanel

# Adiciona as capacidades administrativas necessárias
RUN setcap 'cap_net_admin+ep' /usr/sbin/pufferpanel

# Expõe a porta 8080 para o painel
EXPOSE 8080

# Define o comando de inicialização do container
CMD ["pufferpanel"]
