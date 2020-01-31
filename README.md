**Httparty + Rspec**

Abra o terminal e execute o comando abaixo :
```
bundle install      
```

**Executando os testes**

Abra uma nova aba e digite o comando abaixo:

```
rspec -fd spec/neighborhood_resquest.rb
```


**Docker**
  ` Para executar os testes dentro do container do Docker`

  - Na raiz do projeto digitar o comando `sudo docker image build -t <nomedaimagem> . `
    Exemplo: `sudo docker image build -t rspec .`
      Obs: **O '.' sinaliza que você deseja criar a imagem com as configurações contidas no arquivo `Dockerfile`**

  - Em seguida executar o comando: `sudo docker run --name <nomedocontainer> geckodriver`
      Exemplo: `sudo docker run --name container_rspec rspec`



**Desenvolvedor**
    **Nome:** Bruno Henrique Araujo
    **Email:** lbruno.henrique.araujo@gmail.com
