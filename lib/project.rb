class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all_projects = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        all_projects.collect {|pb| pb.backer}
    end

end