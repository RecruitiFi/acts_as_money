# -*- encoding: utf-8 -*-
# stub: acts_as_money 0.2.6 ruby lib

Gem::Specification.new do |s|
  s.name = "acts_as_money".freeze
  s.version = "0.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jordan Glasner".freeze, "Econsultancy".freeze, "Tim Cowlishaw".freeze, "Ylan Segal".freeze, "Michael Bennett".freeze]
  s.date = "2019-04-11"
  s.email = "michael@michaelbennett.nyc".freeze
  s.extra_rdoc_files = ["README".freeze]
  s.files = ["README".freeze, "lib/acts_as_money.rb".freeze, "test".freeze]
  s.homepage = "https://github.com/RecruitiFi/acts_as_money".freeze
  s.rdoc_options = ["--main".freeze, "README".freeze]
  s.rubygems_version = "2.7.9".freeze
  s.summary = "A fairly trivial plugin allowing easy serialisation of Money values (from the money gem) as attributes on activerecord objects".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<money>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 0"])
    else
      s.add_dependency(%q<money>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<money>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 0"])
  end
end
