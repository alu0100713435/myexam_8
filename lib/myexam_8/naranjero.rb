#!/usr/bin/env ruby
# encoding: utf-8
require 'net/http'

class Naranjero

	def initialize
		@edad = 0
		@altura = 0
		@contadorNaranjas = 0
	    	@recolectar = true
		@mas = 0
		@muerte = false
	end
	  
	  
	def pickAnOrange
		if @contadorNaranjas > 0
			@recolectar = true
		else
			@recolectar = false
		end
		if @recolectar == true
			@contadorNaranjas = @contadorNaranjas - 1
			print 'Deliciosa, te quedan ' + @contadorNaranjas.to_s + " todavia.\n"
		else
			print "No quedan naranjas \n"
		end
	end

	def oneYearPasses
		if @muerte == false
			print "La edad del arbol crece de #{@edad}"
			@edad = @edad + 1
			print " a #{@edad}\n" 
			print "Al arbol crece de #{@altura}"
			@altura = @altura + 10
			print " a #{@altura}\n" 
			if @edad >= 3
				@mas = @mas + 2
				@contadorNaranjas = @contadorNaranjas + 5 + @mas	
			end
			if @edad > 8
				print "El arbol murio\n"
				@muerte = true
			end
		else
			print "El arbol esta muerto \n"
		end
	end

	def orangeCount
		print "@{@contadorNaranjas}\n"
	end

	def getEdad
		return @edad
	end

	def getcontadorNaranjas
		return @contadorNaranjas
	end

end


