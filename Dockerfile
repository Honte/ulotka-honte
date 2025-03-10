FROM ubuntu:24.04

RUN --mount=type=cache,mode=0755,target=/var/cache/apt \
	apt-get update \
	&& apt-get install -yqq --no-install-recommends \
		libcpanplus-perl \
		libfile-slurp-perl \
		make \
		sgf2dg \
		texlive-font-utils \
		texlive-metapost \
		texlive-latex-base \
		ghostscript \
		texlive-lang-polish \
		patch \
	&& rm -rf /var/lib/apt/lists/*

COPY small-triangle-4.252.patch /

# Zakomentuj poniższe RUN, jeżeli symbol trójkąta na
# diagramach ma być większy niż na oryginalnej ulotce
RUN patch -p0 < /small-triangle-4.252.patch

USER 1000
WORKDIR /app

