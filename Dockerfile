FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080

# executado somente na criação do container.
CMD ["node", "index.js"]

# 1º) docker login: fazer o login pelo terminal

# 2º) comando para construir a imagem
# docker image build -t brlsistemas/api-conversao:v1 .

# 3º) Comando para criar o container.
# O nome da imagem sempre deve ser sempre o “nome do usuário / nome da imagem : tag de versão”.
# docker run -d -p 8080:8080 --name api-conversao brlsistemas/api-conversao:v1

# 4º) comando para subir a imagem para o Docker Hub
# docker push [nome da imagem]
# docker push brlsistemas/api-conversao:v1

# 5º) comando para criar a tag "latest"
# docker tag brlsistemas/api-conversao:v1 brlsistemas/api-conversao:latest

# 6º) comando para subir a imagem latest para o Docker Hub
# docker push brlsistemas/api-conversao:latest

# Diretório do GitHub: https://github.com/anderson-sfoliveira/api-conversao
# Diretório do Docker Hub: https://hub.docker.com/repository/docker/brlsistemas/api-conversao

# No Azure precisamos acessar o menu "All Services > Containers > App Services" para criar o serviço da api-conversao.
