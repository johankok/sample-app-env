FROM registry.access.redhat.com/ubi9/ruby-31:9.5-1734609945

USER 0
ADD Gemfile Gemfile.lock ./
RUN chown -R 1001:0 /usr/src
RUN bundle install
USER 1001

ADD app ./

CMD /usr/libexec/s2i/run
