# Use a small Node base
FROM node:18-alpine

# Run as non-root
RUN addgroup -S nodegrp && adduser -S nodeusr -G nodegrp

WORKDIR /app
COPY app/package.json ./
RUN npm ci --only=production
COPY app/ ./

USER nodeusr
EXPOSE 8080
ENV PORT=8080

CMD ["npm", "start"]
