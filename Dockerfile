FROM alpine:latest

WORKDIR /app

# Install necessary packages
RUN apk add --no-cache curl

# Download the file from the URL
RUN curl -LO https://github.com/ljnchn/cocopilot2gpt/releases/download/v0.6.1/copilot2gpt-linux-64-v0.6.1.tar.gz

# Extract the downloaded file
RUN tar -xf copilot2gpt-linux-64-v0.6.1.tar.gz

CMD ["./copilot2gpt"]
