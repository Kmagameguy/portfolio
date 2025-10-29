# frozen_string_literal: true

require "test_helper"
require_relative "../../lib/blog_post"

class BlogPostTest < Minitest::Test
  describe "BlogPost" do
    before do
      @described_class = BlogPost
      FileUtils.stubs(:mkdir_p).returns(true)
      File.stubs(:write).returns(true)
    end

    describe "initialize" do
      it "can initialize a default new post" do
        post = @described_class.new(title: "My Blog Post")

        assert_equal "My Blog Post", post.title
        assert_equal @described_class::DEFAULT_AUTHOR, post.author
        assert_equal @described_class::DEFAULT_FILE_EXTENSION, post.file_extension
        assert_equal @described_class::DEFAULT_THUMBNAIL_FILENAME, post.thumbnail
      end

      it "accepts arguments" do
        post = @described_class.new(
          title: "My Blog Post",
          author: "John Fakename",
          file_extension: ".txt",
          thumbnail: "special_thumbnail.png"
        )

        assert_equal "My Blog Post", post.title
        assert_equal "John Fakename", post.author
        assert_equal ".txt", post.file_extension
        assert_equal "special_thumbnail.png", post.thumbnail
      end

      context "with tags" do
        it "converts the list of tags to a comma-separated string" do
          post = @described_class.new(title: "My Blog Post", tags: %w[example_tag another_tag])

          assert_equal "example_tag, another_tag", post.tags
        end

        it "is nil if there aren't any tags" do
          post = @described_class.new(title: "My Blog Post", tags: [])

          assert_nil post.tags
        end
      end

      it "creates the file" do
        File.unstub(:write)
        FileUtils.unstub(:mkdir_p)

        File.expects(:write).once
        FileUtils.expects(:mkdir_p).once

        @described_class.new(title: "My Blog Post").create!
      end
    end

    describe "validations" do
      it "raises an error if the title is blank" do
        error = assert_raises(ArgumentError) do
          @described_class.new(title: "      ").create!
        end

        assert_equal "Title cannot be blank!", error.message
      end

      it "raises an error if the author is blank" do
        error = assert_raises(ArgumentError) do
          @described_class.new(title: "My Blog Post", author: "      ").create!
        end

        assert_equal "Author cannot be blank!", error.message
      end

      it "raises an error if the file extension isn't valid" do
        error = assert_raises(ArgumentError) do
          @described_class.new(title: "My Blog Post", file_extension: ".doc").create!
        end

        assert_equal(
          "File Extension must be one of these: #{@described_class::VALID_FILE_EXTENSIONS.join(', ')}",
          error.message
        )
      end

      it "raises an error if the post already exists" do
        @described_class.any_instance.stubs(:post_exists?).returns(true)
        post = @described_class.new(title: "My Blog Post")
        file_name = post.send(:file_name)

        error = assert_raises(ArgumentError) do
          post.create!
        end

        assert_equal "Post: #{file_name} already exists!", error.message
      end
    end

    describe "#valid_file_extension?" do
      it "is true if the file extension is included in the allowlist" do
        @described_class::VALID_FILE_EXTENSIONS.each do |extension|
          assert_predicate(
            @described_class.new(title: "My Blog Post", file_extension: extension),
            :valid_file_extension?
          )
        end
      end

      it "is false if the file extension is not included in the allowlist" do
        refute_predicate(
          @described_class.new(title: "My Blog Post", file_extension: ".doc"),
          :valid_file_extension?
        )
      end
    end

    describe "#file_name" do
      it "safely converts the title to a hyphen-separated string" do
        post = @described_class.new(title: "  My    Blog' & Post ")
        date_part = post.timestamp
        expected_file_name = "#{date_part}-my-blog-post"

        assert_equal expected_file_name, post.file_name
      end
    end
  end
end
