server '54.199.29.66', user: 'tomoaki21', roles: %w{app db web}
set :ssh_options, {
  keys: %w(~/.ssh/book_app.pem),
  forward_agent: true,
  auth_methods: %w(publickey),
}