## Metricbeat docker for ADOP-C
Using [InSpec](https://www.inspec.io/) framework to get compliance report for the docker project at  [robedevops/adop-metricbeat-docker:1.0](https://github.com/RobeDevOps/adop-metricbeat-docker/blob/master/Dockerfile) 
## How to run inpsec profile
```
inspec exec profile -t docker://metricbeat-docker
```