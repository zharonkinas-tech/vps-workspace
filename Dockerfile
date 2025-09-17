FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node","-e","http=require('http');http.createServer((_,res)=>res.end('ok v2')).listen(3000,'0.0.0.0')"]
