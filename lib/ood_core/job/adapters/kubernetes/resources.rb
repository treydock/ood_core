module OodCore::Job::Adapters::Kubernetes::Resources

  class ConfigMap
    attr_accessor :name, :files

    def initialize(name, files)
      @name = name
      @files = []
      files.each do |f|
        @files << ConfigMapFile.new(f)
      end
    end

    def mounts?
      @files.any? { |f| f.mount_path }
    end

    def init_mounts?
      @files.any? { |f| f.init_mount_path }
    end
  end

  class ConfigMapFile
    attr_accessor :filename, :data, :mount_path, :sub_path, :init_mount_path, :init_sub_path

    def initialize(data)
      @filename = data[:filename]
      @data = data[:data]
      @mount_path = data[:mount_path]
      @sub_path = data[:sub_path]
      @init_mount_path = data[:init_mount_path]
      @init_sub_path = data[:init_sub_path]
    end
  end

  class Container
    attr_accessor :name, :image, :command, :port, :env, :memory, :cpu, :working_dir,
                  :restart_policy, :image_pull_secret, :supplemental_groups

    def initialize(
        name, image, command: [], port: nil, env: {}, memory: "4Gi", cpu: "1",
        working_dir: "", restart_policy: "Never", image_pull_secret: nil, supplemental_groups: []
      )
      raise ArgumentError, "containers need valid names and images" unless name && image

      @name = name
      @image = image
      @command = command.nil? ? [] : command
      @port = port&.to_i
      @env = env.nil? ? {} : env
      @memory = memory.nil? ? "4Gi" : memory
      @cpu = cpu.nil? ? "1" : cpu
      @working_dir = working_dir.nil? ? "" : working_dir
      @restart_policy = restart_policy.nil? ? "Never" : restart_policy
      @image_pull_secret = image_pull_secret
      @supplemental_groups = supplemental_groups.nil? ? [] : supplemental_groups
    end

    def ==(other)
      name == other.name &&
        image == other.image &&
        command == other.command &&
        port == other.port &&
        env == other.env &&
        memory == other.memory &&
        cpu == other.cpu &&
        working_dir == other.working_dir &&
        restart_policy == other.restart_policy &&
        image_pull_secret == other.image_pull_secret &&
        supplemental_groups == other.supplemental_groups
    end
  end

  class PodSpec
    attr_accessor :container, :init_containers
    def initialize(container, init_containers: nil)
      @container = container
      @init_containers = init_containers
    end
  end
  
end