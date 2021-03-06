class ImplementedScreenDecorator < Draper::Decorator
  delegate_all

  def to_json
    ret = {}

    ret[:id]         = id
    ret[:url]        = payload.url(:large)
    ret[:thumb]      = payload.url(:thumb)
    ret[:project_id] = project_id

    ret
  end
end
