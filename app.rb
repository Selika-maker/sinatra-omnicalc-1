require "sinatra"
require "sinatra/reloader"
require "active_support/all"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/add") do
  erb(:new_add)
end

 get("/add/results") do
   @the_add_num1    = params.fetch("user_add1").to_f
   @the_add_num2    = params.fetch("user_add2").to_f
   @the_add_result = @the_add_num1 + @the_add_num2

   erb(:add_results)
 end

get("/subtract") do
  erb(:new_subtract)
end

get("/subtract/results") do
  @the_subtract_num1 = params.fetch("user_subtract1").to_f
  @the_subtract_num2 = params.fetch("user_subtract2").to_f
  @the_subtract_result = @the_subtract_num1 - @the_subtract_num2

  erb(:subtract_results)
end

get("/multiply") do
  erb(:new_multiply)
end

get("/multiply/results") do
  @the_multiply_num1 = params.fetch("user_multiply1").to_f
  @the_multiply_num2 = params.fetch("user_multiply2").to_f
  @the_multiply_result = @the_multiply_num1 * @the_multiply_num2
  erb(:multiply_results)
end

get("/divide") do
  erb(:new_divide)
end

get("/divide/results") do
  @the_divide_num1 = params.fetch("user_divide1").to_f
  @the_divide_num2 = params.fetch("user_divide2").to_f
  @the_divide_result = @the_divide_num1 / @the_divide_num2
  erb(:divide_results)
end


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  
end
