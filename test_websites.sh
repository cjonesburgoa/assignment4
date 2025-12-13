#!/bin/bash

echo "Testing Website 1..."
podman run -d --rm -p 8081:80 --name w1 website1
sleep 2
if curl -s http://localhost:8081 | grep -q "assignment 6 website1"; then echo "Website 1 test passed." 
else
    echo "Website 1 test failed."
fi
podman stop w1

echo "Testing Website 2..."
podman run -d --rm -p 8082:80 --name w2 website2
sleep 2
if curl -s http://localhost:8082 | grep -q "assignment 6 website2"; then echo "Website 2 test passed." 
else
    echo "Website 2 test failed."
fi
podman stop w2  