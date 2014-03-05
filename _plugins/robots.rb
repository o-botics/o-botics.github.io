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
    end

    def get_robots(site)
      robots_dir = site.config['robots']
      robots = self.traverse_robot_tree(robots_dir)
      return robots
    end

    def traverse_robot_tree(path)
      robots = Array.new
      robotCnt = 0
      config = Hash.new
      config = {"config" => true}
      Dir["#{path}/*"].each do |this_path|
        if File.directory?(this_path)
          index = File.join(this_path, "index.md")
          if File.exists?(index)
            config = YAML.load(File.read(index))
            if config["publish"]
              robots[robotCnt] = config
            end
          end
          if config["publish"]
            robots[robotCnt]["child"] = self.traverse_robot_tree(this_path)
            robots[robotCnt]["url"] = this_path.sub(site.config['robots']+"/","./")
            robotCnt = robotCnt + 1
          end
        end
      end
      return robots
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

