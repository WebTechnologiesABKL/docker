# Docker
### For the Scripts to work (in the local folder), the following prerequisites are necessary:
- Run the scripts as sudo
- The scripts need to be run from inside the local folder
- First run the Build.sh script, then the Run.sh script
- After running the Run.sh script, open your Webbrowser and navigate to localhost:80
- The following folder structure
```
├── Backend
│   ├── Dockerfile
│   ├── package-lock.json
│   ├── package.json
│   └── server.js
├── RASA
│   ├── Dockerfile
│   ├── actions
│   ├── config.yml
│   ├── credentials.yml
│   ├── data
│   ├── domain.yml
│   ├── endpoints.yml
│   ├── models
│   └── tests
├── README.md
├── WeatherService
│   ├── Dockerfile
│   ├── WeatherService.iml
│   ├── index.js
│   ├── package-lock.json
│   ├── package.json
│   └── routers
├── Website
│   ├── Dockerfile
│   ├── README.md
│   ├── android
│   ├── capacitor.config.ts
│   ├── components
│   ├── fonts
│   ├── jsconfig.json
│   ├── next.config.js
│   ├── node_modules
│   ├── out
│   ├── package-lock.json
│   ├── package.json
│   ├── pages
│   ├── postcss.config.js
│   ├── public
│   ├── styles
│   └── tailwind.config.js
├── docker
│   ├── README.md
│   ├── docker-compose.yml
│   └── local
└── duckling
    ├── Dockerfile
    └── duckling.iml
```