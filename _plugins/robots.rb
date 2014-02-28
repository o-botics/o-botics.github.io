module Jekyll
  class RobotsIndex < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'robots.html')
      self.data['robots'] = self.get_robots(site)

      Jekyll.logger.warn(self.data['robots'])
      Jekyll.logger.warn('-----------')
    end

    def get_robots(site)
      robots_dir = site.config['robots']
      {}.tap do |robots|
        Dir["#{robots_dir}/*/index.md"].each do |path|
          name   = File.basename(File.dirname(path))
          config = YAML.load(File.read(File.join(@base, path)))
          robots[name] = config if config['published']
        end
      end
    end
  end

  class GenerateRobots < Generator
    safe true
    priority :normal

    def generate(site)
      robots = RobotsIndex.new(site, site.source, "/robots")

      robots.render(site.layouts, site.site_payload)
      robots.write(site.dest)

      site.pages << robots
      site.static_files << robots
    end
  end


end

