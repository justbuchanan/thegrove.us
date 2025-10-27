FROM archlinux
MAINTAINER Justin Buchanan <justbuchanan@gmail.com>

RUN pacman -Sy --noconfirm base-devel ruby ruby-bundler

RUN mkdir /site
WORKDIR /site
COPY ./ /site/

RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0"]
