# Laboratorium 3

## Budowanie obrazu:

```sh
docker build --ssh default="C:\Users\rafal\.ssh\id_ed25519" -f Dockerfile -t lab2.v1 .
```

## Uruchamianie kontenera

```sh
docker run -d --name lab2-container -p 8080:8080 lab2.v1
```

## Zapisanie obrazu w repozytorium

```sh
docker commit rabalbalinski/lab2 rbalinski-lab2
docker push rabalbalinski/lab2
```