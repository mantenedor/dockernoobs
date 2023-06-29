# dockernoobs

Só para noobs.

1. Clone o projeto;
2. Certifique-se de que não haja nenhum serviçõ executando nas portas 80,443 e 3000
3. Apartir do diretório "node" Execute:
```
docker compose up -d
```
4. O node executará na porta 3000;
5. A apache fazo o proxy para backend na porta 80;
6. Acesse o http://ip_da_maquina_hospedeira. A imagem mensagem "hello world!" deve aparecer.
7. Aponte o volume do node em "docker-compose.yml" pela sua aplicação:

   ![image](https://github.com/mantenedor/dockernoobs/assets/5191875/21615309-97f5-48a8-b0f1-6f8b84b2d1c1)

