class TowariesController < ApplicationController
     
layout 'admin'
  
  def index

    end

  def pokaz
    @towary= Towaries.find(params[:id]) 
  end

  def utworz
    @towary = Towaries.new(towaries_parametry)
      if @towary.save
        flash[:notice] = "Towar został dodany"
        redirect_to(:action => 'index')
      else 
        render('nowy')
      end
  end

  def nowy
  end

  def edycja
    @towary = Towaries.find(params[:id])
  end

  def aktualizuj
    @towary= Towaries.find(params[:id])
      if @towaries.update_attributes(towaries_parametry)
        flash[:notice] = "Towar został zmodyfikowany"
        redirect_to(:action => 'pokaz', :id => @towaries.id)
      else 
        render('edycja')
      end

  end

  def kasuj
    @towary = Towaries.find(params[:id]).destroy
    flash[:notice] = "Towary usunięte"
    redirect_to(:action=>'index')
  end

  def usun
    @towary = Towaries.find(params[:id])
  end

  def towaries_parametry
    params.require(:towaries).permit(:zamowienie_id, :cena, :opis)
  end end