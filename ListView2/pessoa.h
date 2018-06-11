#ifndef PESSOA_H
#define PESSOA_H

#include <QString>
class Pessoa
{
public:
    Pessoa();

    QString getNome(){
        return _nome;
    }

    void setNome( QString nome ){
        _nome = nome;
    }

    int getIdade(){
        return _idade;
    }

    void setIdade( int idade ){
        _idade = idade;
    }

private:
   QString _nome;
   int _idade;

};

#endif // PESSOA_H
