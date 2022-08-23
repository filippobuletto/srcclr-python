# srcclr-python
Alpine based container to be used to scan Python 3 with sourceclear Veracode agent (SCA)

[![Docker](https://github.com/filippobuletto/srcclr-python/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/filippobuletto/srcclr-python/actions/workflows/docker-publish.yml)

## Usage

```bash
docker pull ghcr.io/filippobuletto/srcclr-python
# Export SRCCLR_API_TOKEN variable
# Clone the repo of the project to be scanned
git clone https://github.com/srcclr/example-python3-pip.git
# Run the scanner agent (add -e DEBUG=1 -e VERBOSE=1 if you need more details)
docker run --rm -it -e SRCCLR_API_TOKEN=$SRCCLR_API_TOKEN -v $(pwd)/example-python3-pip:/app ghcr.io/filippobuletto/srcclr-python
```
