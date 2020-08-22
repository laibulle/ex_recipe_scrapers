FROM elixir:1.10-alpine

ENV ENVIRONMENT=prod

WORKDIR /opt/app
ADD . .

RUN apk --no-cache --update add libxml2-dev libxslt-dev python3 python3-dev yarn build-base git libressl-dev \
    && mix local.rebar --force \
    && mix local.hex --force
#RUN cd elixir/assets && yarn install && yarn build && mv build ../priv/static
# RUN cd landing && yarn install && yarn build
# RUN cd coach && yarn install && yarn build

# WORKDIR /opt/app/elixir/priv/recipes_scrapers
# RUN python3 -m venv .venv
# RUN source .venv/bin/activate && pip install -r requirements.txt

WORKDIR /opt/app/elixir
#RUN MIX_ENV=prod mix do deps.get, deps.compile, compile
#RUN MIX_ENV=prod mix phx.digest
#RUN MIX_ENV=prod mix release


#CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf" && "./bin/nixe eval 'Nixe.Release.migrate()'" && "./bin/nixe start && nginx -g daemon off;"
