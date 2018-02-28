require 'action_view/helpers/rendering_helper'

module RenderingHelperWithUpdate
  def render(options = {}, locals = {}, &block)
    if options == :update
      update_page(&block)
    else
      super(options, locals, &block)
    end
  end
end

ActionView::Helpers::RenderingHelper.send(:prepend, RenderingHelperWithUpdate)
