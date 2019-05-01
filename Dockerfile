
#統計講座demo 実行環境構築用Dockerfile(配布用イメージ)

#どのイメージを基にするか
FROM sgr0416st/r-jupyter

# 作成したユーザの情報
LABEL maintainer="s.suguru <s.suguru sgr0416st@gmail.com>"

RUN cd /home/jovyan/work/  \
&&  git clone https://github.com/sgr0416st/statistics_workshops.git