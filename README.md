siriproxy-arduino
=================

A SiriProxy plugin to interface with an Arduino

__SiriProxy Github Status
This repo is a plugin for SiriProxy that will let the user check the current status of GitHub using it's status API.

__Installation
First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins, e.g:

~/SiriProxy/plugins/

Drop this into your ~/.siriproxy/config.yml file:

```yml
- name: 'Git'
  git: 'git://github.com/Deanmv/SiriProxy-GithubStatus.git'```

Then rebundle siriproxy and you are off!
