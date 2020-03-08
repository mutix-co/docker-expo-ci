FROM ruby:2.6

WORKDIR /usr/src/app

# locale
RUN apt-get update
RUN apt-get install -y locales
RUN apt-get install -y build-essential
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# fastlane
RUN gem install fastlane