class SliceDecorator < Draper::Decorator
  delegate_all

  def to_json
    ret = as_json

    ret[:exportables]  = exportables.decorate.to_json

    ret
  end
end
