
class Article

  @@data_matrix = {
      creation: {update_copy: 'creation', accept: 'writing', reject: 'creation'},
      writing: {update_copy: 'writing', accept: 'art review', reject: 'writing'},
      art_review: {accept_art: 'preview', reject_art: 'writing'},
      preview: {state: 'final review'},
      final_review: {update_copy: 'writing', accept: 'ready to publish', reject: 'writing'},
      ready_to_publish: {publish: 'published'},
      }

  def initialize
    @state = 'creation'
  end

  def destroy
    @state = 'destroy'
    self.freeze
  end

  def update_copy
    @state = @@data_matrix.dig(@state.to_sym, :update_copy)
  end

  def accept
    @state = @@data_matrix.dig(@state.to_sym, :accept)
  end

  def reject
    @state = @@data_matrix.dig(@state.to_sym, :reject)
  end

  def accept_art
    @state = @@data_matrix.dig(@state.to_sym, :accept_art)
  end

  def reject_art
    @state = @@data_matrix.dig(@state.to_sym, :reject_art)
  end

  def publish
    @state = @@data_matrix.dig(@state.to_sym, :publish)
  end

end
