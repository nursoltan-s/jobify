class JobsFacade
  attr_reader :related_jobs

  def initialize(related_jobs)
    @related_jobs = related_jobs
  end

  def related_jobs
    @related_jobs ||= Job.limit(3)
  end
end