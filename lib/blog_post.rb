# frozen_string_literal: true

require "pathname"
require "fileutils"
require "yaml"
require "active_support/all"

class BlogPost
  DEFAULT_FILE_EXTENSION = ".md"
  DEFAULT_AUTHOR = "Kevin"
  DEFAULT_THUMBNAIL_FILENAME = "thumb.jpg"
  VALID_FILE_EXTENSIONS = [ DEFAULT_FILE_EXTENSION, ".txt", ".rtf" ].freeze

  def initialize(title:, author: DEFAULT_AUTHOR, file_extension: DEFAULT_FILE_EXTENSION, tags: [], thumbnail: DEFAULT_THUMBNAIL_FILENAME)
    @title          = title.to_s
    @file_extension = file_extension.to_s
    @author         = author.to_s
    @tags           = Array(tags).map(&:to_s).join(", ")
    @thumbnail      = thumbnail
    @thumbnail_alt  = nil
    @thumbnail_src  = nil
    @thumbnail_credit = nil
  end

  def create!
    raise ArgumentError, "Title cannot be blank!" if title.blank?
    raise ArgumentError, "Author cannot be blank!" if author.blank?
    raise ArgumentError, "File Extension must be one of these: #{VALID_FILE_EXTENSIONS.join(", ") }" unless valid_file_extension?
    raise ArgumentError, "Post: #{file_name} already exists!" if new_post_path.exist?

    new_post_path.write(post_header)
    create_images_path

    puts "Created template: #{new_post_path}."
    puts "Created asset directory: #{images_path}"
  end

  private

  attr_reader :title,
              :file_extension,
              :author,
              :thumbnail,
              :thumbnail_alt,
              :thumbnail_src,
              :thumbnail_credit

  def valid_file_extension?
    VALID_FILE_EXTENSIONS.include?(file_extension)
  end

  def new_post_path
    posts_path.join("#{file_name}#{file_extension}")
  end

  def posts_path
    project_root.join("_posts").expand_path
  end

  def file_name
    "#{post_timestamp}-#{title.to_s.downcase.squish.dasherize}"
  end

  def post_timestamp
    Time.current.strftime("%Y-%m-%d")
  end

  def create_images_path
    FileUtils.mkdir_p(images_path.to_s)
  end

  def relative_images_path
    "/#{images_path.relative_path_from(project_root)}"
  end

  def relative_thumbnail_path
    "/#{images_path.join(thumbnail).relative_path_from(project_root)}"
  end

  def images_path
    project_root.join("assets", "images", "posts", file_name)
  end

  def project_root
    Pathname.new(__dir__).join("..")
  end

  def post_header
    <<~MARKDOWN
      #{post_frontmatter.to_yaml.strip}
      ---
    MARKDOWN
  end

  def post_frontmatter
    {
      layout: "post",
      title: title.titleize,
      author: author,
      tags: tags,
      thumbnail: relative_thumbnail_path,
      thumbnail_alt: thumbnail_alt,
      thumbnail_src: thumbnail_src,
      thumbnail_credit: thumbnail_credit,
      image_path: relative_images_path
    }.transform_keys(&:to_s)
  end

  def tags
    temp_tags = Array(@tags).join(", ")
    temp_tags.blank? ? nil : temp_tags
  end
end