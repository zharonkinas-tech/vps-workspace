FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production
EXPOSE 3000
# можно задать RESPONSE, иначе вернётся 'ok'
CMD ["node","-e","http=require('http');http.createServer((_,res)=>res.end(process.env.RESPONSE||'ok')).listen(3000,'0.0.0.0')"]
