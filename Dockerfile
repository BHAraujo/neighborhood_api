FROM ruby
MAINTAINER "Ruby RSPEC"


# Instalar o driver do Firefox (Geckodriver)
RUN gem install geckodriver-helper -v 0.23.0 && gecko_updater

#Criar pasta para copiar o projeto para dentro do container
RUN mkdir neighborhood
COPY . /neighborhood
WORKDIR /neighborhood

#Instalar lib de gerenciamento da gems
RUN gem install bundler
RUN bundle

#Executar o projeto
RUN rspec -fd spec/neighborhood_resquest.rb
