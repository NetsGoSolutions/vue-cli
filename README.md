# Vue CLI in docker
This image provides Vue CLI UI inside a docker container

## Dev environment in Windows 10

#### Installing docker
[Download docker for windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows )

#### Pulling docker image
Open `Windows PowerShell` and pull the image

```
docker pull netsgosolutions/vue-cli
```

#### Starting and configuring container
Open docker UI, navigate to `Images` tab and click `RUN` on `netsgosolutions/vue-cli` image<br />
Open `Optional Settings` 

##### Defining container name
| Variable | Example | Description |
|-|-|-|
| Container Name | netsgo.no | Friendly container name |

##### Defining ports
Click the `+` button to add more
| Port | Description |
|-|-|
| 8000 | Default Vue UI port |
| 8080 | Default Vue project port |

You can add more project ports if you have multiple Vue projects

##### Defining volumes
Example for volume path
| Host Path | Container Path | Description |
|-|-|-|
| C:\Users\YOUR_USER\Documents\GitHub\netsgo.no | /code | Volume for accessing project files |

##### Starting container
Once all of configuration is done, press `Run`. The container should now start

#### Installing node modules
This step only needs to be done once. Navigate to `Containers / Apps` tab and click on `CLI` button to open command line for the container. Execute `yarn install`, this may take a few minutes. Once done, you can close the command line.

#### Importing Vue project
Navigate to `localhost:8000` in your browser and navigate to `Import` tab. Select your project folder and click `Import this folder`. If you see `public` and `src` folders by default, you do not need to select a project folder, simply click `Import this folder`

#### Starting development environment
Navigate to `Tasks` tab, select `serve` and click `Run task`. Once it's done compiling you can open the live app by navigating to `localhost:8080`


