class MockupsController < ApplicationController
  def page_a
  end

  def page_b
  end

  def bs_grid
    #render layout: 'mockup'
    render layout: 'bs_demo'
  end

  def bs_gutter
    render layout: 'bs_demo'
  end

  def bs_buttons
    render layout: 'bs_demo'
  end

  def bs_cards_and_panels
    render layout: 'bs_demo'
  end

  def bs_images
    render layout: 'bs_demo'
  end

  def bs_icons
    render layout: 'bs_demo'
  end

  def bs_theming_kit
    render layout: 'mockup'
  end

  def bs_ud_home
    render layout: 'mockup'
  end

  def bs_ud_news
    render layout: 'mockup'
  end

  def bs_ud_tema
    render layout: 'mockup'
  end

  def edu_index_4
    render layout: 'edu_demo'
  end

  def edu_ud_list
    #UbuntuDream: list
    render layout: 'edu_demo'
  end

  def stimulus_demo
    render layout: 'mockup'
  end

  def youtube_player
    render layout: 'empty'
  end
end
