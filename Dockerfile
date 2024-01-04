FROM crowdin/cli:3.15.0

RUN apk --no-cache add curl git git-lfs jq gnupg bash gettext;

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
