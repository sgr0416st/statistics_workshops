
#正規性のテスト実行用Dockerfile

#どのイメージを基にするか
FROM sgr0416st/r-jupyter

# 作成したユーザの情報
LABEL maintainer="s.suguru <s.suguru sgr0416st@gmail.com>"

# sudoが使えるようにrootユーザで実行
USER root

# Ubuntuのアップデート、ライブラリのインストール
RUN sudo apt-get -y update && \
sudo apt-get -y install libgfortran3 && \
sudo apt-get -y install vim

# 日本語フォントのインストール
RUN sudo apt-get -y install fonts-ipafont fonts-ipaexfont && \
sudo fc-cache -fv


# condaを利用して、jupyter nbextensions および Python with R に必要なパッケージ,スライド化パッケージをインストール
RUN conda install -y -c conda-forge jupyter_contrib_nbextensions && \
conda install -y pandas simplegeneric rpy2 rise jq

# jupyter nbextension の設定
RUN jupyter nbextension enable autosavetime/main && \
jupyter nbextension enable highlight_selected_word/main && \
jupyter nbextension enable codefolding/main && \
jupyter nbextension enable toggle_all_line_numbers/main && \
jupyter nbextension enable contrib_nbextensions_help_item/main && \
jupyter nbextension enable hide_input/main && \
jupyter nbextension enable hide_input_all/main && \
jupyter nbextension enable toc2/main

# rise（スライド生成ツール）のscorllをtrueに変更
RUN cat /home/jovyan/.jupyter/nbconfig/notebook.json | jq '. |= .+ {"rise": {scroll:true}}' > /home/jovyan/.jupyter/nbconfig/notebook.json



