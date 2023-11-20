FROM dart:3.2.0-sdk

WORKDIR /technical-challenge-dart-barcelos

COPY . /technical-challenge-dart-barcelos

RUN dart pub get

CMD [ "dart", "run" ]

