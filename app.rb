require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @last = params[:word5]
    "#{@first} #{@word2} #{@word3} #{@word4} #{@last}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if params[:operation] == 'multiply'
      @operation = '*'
    elsif params[:operation] == 'add'
      @operation = '+'
    elsif params[:operation] == 'subtract'
      @operation = '-'
    else
      @operation = '/'
    end
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @evaluate_this = "#{@num1}#{@operation}#{@num2}"
    "#{eval(@evaluate_this)}"
  end

end
