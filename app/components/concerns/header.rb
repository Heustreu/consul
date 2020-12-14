module Header
  extend ActiveSupport::Concern

  def header
    provide(:title) do
      "#{t("#{namespace}.header.title")} - #{title}"
    end

    tag.h2 title
  end

  private

    def namespace
      controller_path.split("/").first
    end
end
