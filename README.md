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
7. Jubstitua o co conteúdo do volume pela sua aplicação.
