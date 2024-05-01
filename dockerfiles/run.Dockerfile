FROM gcr.io/buildpacks/google-22/run

USER root

RUN apt-get update && apt-get -y install \
		libatk1.0-0 \
    libatk-bridge2.0-0 \
    libdrm2 \
    libatspi2.0-0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libxkbcommon0 \
    libasound2 \
    libnss3 \
    libnspr4 \
    libcups2 \
    libpango-1.0-0 \
    libcairo2 \
    libx11-xcb1 \
    libxcursor1 \
    libgtk-3-0 \
    libpangocairo-1.0-0 \
    libcairo-gobject2 \
    libgdk-pixbuf-2.0-0 \
    fonts-noto

USER cnb
