Ulotka Honte
============

Źródła ulotki przygotowanej w poznańskim klubie go. 
Przystosowana do wydruku dwustronnego, składana "na trzy".
Daleko jej od ideału, widzimy ciągle niedociągnięcia, ale jest obecnie najlepszą jaką mamy ;)

Intalacja
---------

Do kompilacji PDFa wymagany jest moduł perlowy sgf2dg oraz działajaca instalacja LaTeX'a.

### Debian

Paczki debianowe są za stare.

Instalujemy:
    
    $ sudo cpanp
    CPAN Terminal> i Games::Go::Diagram

Dogrywamy pliki lokalnie zmienione:

    sudo cp diag/Dg2Mp-patched.pm /usr/local/lib/perl/5.WERSJA.2/Games/Go/Dg2Mp.pm
    sudo cp diag/sgf2dg.pl /usr/local/bin/sgf2dg

### Windows

Nie wiem czy ktokolwiek próbował.

Kompilacja
----------

Jest przygotowany Makefile, także przy poprawnej intalacji wystarczy:

    make

Kontakt
-------

Chętnie przyjmemi każdą pomoc w rozwoju ulotki. Można się z nami kontaktować
mailowo na poznan@go.art.pl.

