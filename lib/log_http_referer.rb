module LogHttpReferer
  def self.included(c)
    c.before_filter :log_referer
  end
  
  def log_referer
    logger.info "Referer: %s" % self.request.referer if self.request.referer
  end
  
end