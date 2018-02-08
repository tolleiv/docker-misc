FROM dtzar/helm-kubectl
RUN apk add --update ca-certificates openssl && update-ca-certificates && apk add --update git make git jq curl
RUN helm init --client-only
RUN helm plugin install https://github.com/hypnoglow/helm-s3.git
