class ErrorsController < ApplicationController
  def internal_server_error
    render(:status => 404, :sentry_event_id => Raven.last_event_id)
  end
end