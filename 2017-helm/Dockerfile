FROM dtzar/helm-kubectl:2.10.0
RUN apk add --update ca-certificates openssl && update-ca-certificates && apk add --update git make jq curl
RUN helm init --client-only
RUN helm plugin install https://github.com/hypnoglow/helm-s3.git
