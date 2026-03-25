#!/bin/bash

cp pre-push.sh .git/hooks/pre-push
chmod +x .git/hooks/pre-push
echo "pre-push hook installed successfully!"
