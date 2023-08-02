FROM registry.access.redhat.com/ubi9/ruby-30:1-114.1690899873

USER 0
ADD Gemfile Gemfile.lock ./
RUN chown -R 1001:0 /usr/src
RUN bundle install
USER 1001

ADD app ./

CMD /usr/libexec/s2i/run
