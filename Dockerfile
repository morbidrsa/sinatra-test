FROM opensuse:13.2

RUN zypper --non-interactive --gpg-auto-import-keys refresh
RUN zypper install -y gcc \
    	   	      libopenssl-devel \
		      make \
		      ruby \
		      ruby-devel \
		      sqlite3-devel
RUN gem install sinatra \
    		shotgun	\
		sqlite3 \
		datamapper \
		dm-sqlite-adapter
ADD code /code
WORKDIR /code