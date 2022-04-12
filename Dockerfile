FROM lopsided/archlinux:devel

WORKDIR /app

COPY ../ .

RUN pacman -Sy --noconfirm archlinux-keyring
RUN pacman -Su --noconfirm rustup
RUN rustup default stable
RUN --mount=type=tmpfs,target=/root/.cargo ./scripts/dist

