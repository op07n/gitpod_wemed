# gitpod_wemed

## *wemed

http://wemed.ohwg.net/

_A multipart MIME document viewer and editor_

Current version: 0.5


[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/op07n/gitpod_wemed)

<details>
<summary>
    Click to see the <code>DOCKERFILE</code>.
</summary>
<p>

```DOCKERFILE

FROM gitpod/workspace-full-vnc:latest

USER root

RUN  apt-get update \
  && apt-get install -y matchbox twm \
  && apt-get install -y libgtk-3-dev libgmime-2.6-dev libwebkit2gtk-4.0-dev gtksourceview-3.0\
  && cd /home/gitpod \
  && git clone https://github.com/ohwgiles/wemed.git  \
  && cd wemed  \
  && cmake -DCMAKE_BUILD_TYPE=Release . \
  && make \
  && make install \
  && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
  
```

</p>
</details>

