class AuthorizationsController < ActionController::API
  def create
    auth_clent = Google::APIClient::ClientSecrets.new('web' => {
        client_id: ENV['EMBER_APP_GOOGLE_CLIENT_ID'],
        client_secret: ENV['EMBER_APP_GOOGLE_CLIENT_SECRET'],
        redirect_url: 'http://localhost:4200/oauth2callback'
    }).to_authorizaion
    client.grant_type = 'authorization_code'
    client.code = params['authorization_code']
    token = client.fetch_access_token!

    client = Google::Apis::Oauth2V2::Oauth2Service.new
    client.authorization = auth_clent
    user_info = client.get_userinfo

    auth_token = AuthToken.where(email:user.info.email).first_or_create
    auth_token.update(token: token)

    # NOTE! this kind of authorization doesn't allow us
    # to login user from multiple devices
    render json: {
      email: user_info.email,
      token: token
    }
  end
end