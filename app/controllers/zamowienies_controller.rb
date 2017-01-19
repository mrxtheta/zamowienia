class ZamowieniesController < ApplicationController
     
layout 'admin'
  
  def index

    @zamowienie = Zamowienie.sortuj

  end

  def pokaz
    @zamowienie = Zamowienie.find(params[:id]) 
  end

  def utworz
    @zamowienie = Zamowienie.new(zamowienie_parametry)
      if @zamowienie.save
        flash[:notice] = "Zamowienie zostalo utworzone"
        redirect_to(:action => 'index')
      else 
        render('nowy')
      end
  end

  def nowy
  end

  def edycja
    @zamowienie = Zamowienie.find(params[:id])
  end

  def aktualizuj
    @zamowienie = Zamowienie.find(params[:id])
      if @zamowienie.update_attributes(zamowienie_parametry)
        flash[:notice] = "Zamowienie zostało zmodyfikowane"
        redirect_to(:action => 'pokaz', :id => @zamowienie.id)
      else 
        render('edycja')
      end

  end

  def kasuj
    @zamowienie = Zamowienie.find(params[:id]).destroy
    flash[:notice] = "Zamowienie zostalo skasowane"
    redirect_to(:action=>'index')
  end

  def usun
    @zamowienie = Zamowienie.find(params[:id])
  end

  def zamowienie_parametry
    params.require(:zamowienie).permit(:klient_id, :status, :wartosc, :wyslaneczynie, :zawartosc)
  end end