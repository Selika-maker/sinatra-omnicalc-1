require "sinatra"
require "sinatra/reloader"
require "active_support/all"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

 get("/square/results") do
   pp params    # look in your terminal for what keys are present
   @the_square_num    = params.fetch("users_number").to_f
   @the_square_result = @the_square_num ** 2

   erb(:square_results)
 end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_square_root_num = params.fetch("user_number").to_f

  @the_square_root_result = @the_square_root_num ** 0.5

  erb(:square_root_results)
end

get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @the_minimum = params.fetch("user_min").to_f
  @the_maximum = params.fetch("user_max").to_f
  @the_random_number = rand(@the_minimum..@the_maximum)
  erb(:random_results)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  @the_apr       = params.fetch("user_apr").to_f
  @the_apr_month = @the_apr / 100 / 12
  @the_years     = params.fetch("user_years").to_f
  @the_months    = @the_years * 12
  @the_principal = params.fetch("user_pv").to_f

  numerator   = @the_apr_month * @the_principal
  denominator = 1 - (1 + @the_apr_month) ** (-@the_months)
  @the_payment = numerator / denominator

  erb(:payment_results)
end


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  
end
