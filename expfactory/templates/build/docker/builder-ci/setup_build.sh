#!/use/bin/bash

echo "Building CI builder in /tmp/builder for testing current PR..."
mkdir -p /tmp/builder
cp ../builder/entrypoint.sh /tmp/builder
cp Dockerfile /tmp/builder
cp build.sh /tmp/builder && chmod u+x /tmp/builder/build.sh
cp -R $HOME/expfactory /tmp/builder
