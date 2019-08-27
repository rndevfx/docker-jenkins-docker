FROM gentoo/stage3-amd64

RUN emerge-webrsync -v
COPY data/package.accept_keywords /etc/portage/package.accept_keywords
COPY data/package.use /etc/portage/package.use
RUN emerge dev-util/jenkins-bin app-emulation/docker dev-vcs/git

