module NavHelper
  def self.set_active(tab_name)
    @active_tab_name = tab_name.to_sym
  end

  def self.for(tab_name)
    tab_name.to_sym == @active_tab_name ? 'active' : nil
  end
end
