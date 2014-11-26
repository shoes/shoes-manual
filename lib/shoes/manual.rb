require "shoes/manual/version"

class Array
  def /(len)
    a = []
    each_with_index do |x, i|
      a << [] if i % len == 0
      a.last << x
    end
    a
  end
end

class Shoes
  module Manual
    ROOT_DIR = File.expand_path(File.join(__FILE__, "../../.."))

    def self.load(lang)
      @docs ||= load_path(lang =~ /\.txt$/ ? lang : File.join(ROOT_DIR, "static/manual-#{lang}.txt"))
    end

    def self.load_path(path)
      str = IO.read(path).force_encoding("UTF-8")
      (str.split(/^= (.+?) =/)[1..-1] / 2).map do |k, v|
        sparts = v.split(/^== (.+?) ==/)
        sections = (sparts[1..-1] / 2).map do |k2, v2|
          meth = v2.split(/^=== (.+?) ===/)
          k2t = k2[/^(?:The )?([\-\w]+)/, 1]
          h = { title: k2, section: k, description: meth[0], methods: (meth[1..-1] / 2) }
          [k2t, h]
        end
        h = { description: sparts[0], sections: sections, class: "toc" + k.downcase.gsub(/\W+/, '') }
        [k, h]
      end
    end
  end
end
