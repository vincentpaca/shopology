Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, '277729982262813', 'b618b60ed5183a2a098402ca14f1e313',
    :scope => 'email,offline_access,read_stream,user_photos,publish_actions,manage_pages,photo_upload', :display => 'popup'
  else
    provider :facebook, '311720765527491', '5a10d604135a6a34a9f19cf860abe724',
    :scope => 'email,offline_access,read_stream,user_photos,publish_actions,manage_pages,photo_upload', :display => 'popup'
  end
end
