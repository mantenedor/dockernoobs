# nodejs com Apache proxy

1. Clone o projeto;
2. Certifique-se de que não haja nenhum serviço executando nas portas 80,443 e 3000
3. A partir do diretório "node" Execute:
```
docker compose up -d
```
4. O node executará na porta 3000;
5. A apache faz o proxy para backend na porta 80;
6. Acesse o http://ip_da_maquina_hospedeira. A imagem mensagem "hello world!" deve aparecer.
7. Aponte o volume do node em "docker-compose.yaml" para sua aplicação, onde, o valor antes dos ":"(dois pontos) correspondem ao local da aplicação na máquina hospedeira e o valor depois dos ":" corresponde ao local de destino dentro do container. Utilize smepre caminhos absolutos:

   ![image](https://github.com/mantenedor/dockernoobs/assets/5191875/1a1d3cc9-246f-4cfb-acc5-ac61c1e7ded5)

Utilize o comando abaixo para parar os containers:
```
docker compose down
```
Utilize o comando abaixo para eliminar objetos do docker orfãos:
```
docker system prune --all --volumes --force
```
Objetos em execução serão mantidos.
