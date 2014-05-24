namespace :load do
  task :defaults do
    Dotenv.load ".env.#{fetch(:stage)}", '.env'
  end
end
