class UzytkowniksController < ApplicationController
  
layout false

    def index

    @uzytkownik = Uzytkownik.sortuj

    end

    def pokaz

    @uzytkownik = Uzytkownik.find(params[:id])

    end

    def nowy
    #@uzytkownik = Uzytkownik.new(uzytkownik_parametry)
    #if @Uzytkownik.save
    #redirect_to(:action=>'index')
    #else
    #@licznik = Uzytkownik.count+1
    #render('nowy')
    end

    def edycja
    #@uzytkownik = Uzytkownik.find(params[:id])
    #@licznik = Uzytkownik.count
    end

    def aktualizuj
    #    @uzytkownik = Uzytkownik.find(params[:id])
    #if @uzytkownik.update_attributes(uzytkownik_parametry)
    #  redirect_to(:action=>'pokaz', :id => @uzytkownik.id)
    #else
    #  @licznik = Uzytkownik.count
    # render('edycja')
    end

  def usun
  #@uzytkownik = Uzytkownik.find(params[:id]).destroy
  #redirect_to(:action=>'index')
  end


  def kasuj
  #@uzytkownik = Uzytkownik.find(params[:id]).destroy
  #redirect_to(:action=>'index')
  end

  def uzytkownik_parametry
  #params.require(:uzytkownik).permit(:imie, :nazwisko, :email, :telefon);
  end
end
