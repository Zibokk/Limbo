World(Module.new do
  def with_visible_element(selector)
    element = nil
    wait_until do
      element = find(selector)
      element.visible?
    end

    yield element
  end

  def ensure_animation_finished
    wait_until do
      page.evaluate_script('$(":animated").length') == 0
    end
  end

end)
