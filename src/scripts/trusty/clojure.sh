function install_clojure() {
    LEIN_VERSION=2.5.3
    LEIN_URL=https://raw.github.com/technomancy/leiningen/${LEIN_VERSION}/bin/lein
    LEIN_BIN=/usr/local/bin/lein

    curl -L -o $LEIN_BIN $LEIN_URL
    chmod +x $LEIN_BIN

    (cat <<'EOF'
# Force dependencies to download
set -ex
lein -v
EOF
    ) | as_user bash
}
