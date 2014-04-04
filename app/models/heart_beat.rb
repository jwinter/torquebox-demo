class HeartBeat
  def run
    # code reloading worked without redeploy
    Rails.logger.info "#{Time.now} lub dub; lub dub"
  end
end
