# nodejs com Apache proxy

1. Clone o projeto;   
```
git clone https://github.com/mantenedor/dockernoobs.git
```
3. Certifique-se de que não haja nenhum serviço executando nas portas 80,443 e 3000
4. Crie e/ou modifique variáveis de ambiente no "docker-compose.yaml":

![image](https://github.com/mantenedor/dockernoobs/assets/5191875/abcf5b54-ccbe-472f-8f7b-9693062a705f)

5. Atribua os valores das variáveis criadas/modificadas no arquivo ".env":
  
![image](https://github.com/mantenedor/dockernoobs/assets/5191875/cf6bdb76-f156-4ae2-8109-4fe519a08f38)

6. Gere um certificado auto assinado, para testar, seguindo estes tutorial: https://devopscube.com/create-self-signed-certificates-openssl/
7. Mapeie os certificados via volume:

![image](https://github.com/mantenedor/dockernoobs/assets/5191875/b3857f1f-9b7b-4939-a079-cc999a690482)

8. A partir do diretório "node" Execute:
```
docker compose up -d
```
O node executará na porta 3000;
  
O apache faz o proxy para o backend nas porta 80 e 443.
   
10. Acesse o http://ip_da_maquina_hospedeira. A mensagem "Funfa!" deve aparecer.

Utilize o comando abaixo para parar os containers:
```
docker compose down
```
Utilize o comando abaixo para eliminar objetos do docker orfãos:
```
docker system prune --all --volumes --force
```
Objetos em execução serão mantidos.
