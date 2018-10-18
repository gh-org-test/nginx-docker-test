FROM node
RUN git clone -o react-dashboard -b master --single-branch https://github.com/flatlogic/react-dashboard.git MyApp
WORKDIR /MyApp
RUN npm install
RUN npm run build
