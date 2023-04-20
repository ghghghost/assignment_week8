#!/bin/bash

# files 폴더의 파일 복사
for file in files/*
do
  # 파일 이름에서 첫 글자 추출
  first_char=$(basename "$file" | cut -c 1 | tr '[:upper:]' '[:lower:]')

  # 첫 글자가 대문자인 경우 해당 알파벳의 소문자 폴더로 복사
  if [[ "$(basename "$file")" =~ ^[[:upper:]] ]]; then
    cp "$file" "${first_char}/"
  else # 첫 글자가 소문자인 경우 해당 폴더로 복사
    cp "$file" "$first_char/"
  fi
done