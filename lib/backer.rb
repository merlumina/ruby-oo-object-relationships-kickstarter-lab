class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_projects = ProjectBacker.all.select do |project|
            project.backer == self
        end
        all_projects.collect {|pb| pb.project}
    end

end