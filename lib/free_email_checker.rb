require "free_email_checker/version"

module FreeEmailChecker
  # Your code goes here...
  def self.check(email)
    check = { free: false, domain: false, status: ""}
    if (email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i) == 0
      w = email.split("@").last
      domains_path = File.join( File.dirname(__FILE__), 'email_provider_domains.txt' )
      file = File.readlines( domains_path )
      if file.grep(/#{w}/).size > 0
        check[:free] = true
        check[:status] = "#{email} found in free email provider list."
      else
        require 'resolv-ipv6favor'
        mx = Resolv::DNS::Resource::IN::MX
        response = Resolv::DNS.new.getresources(w, mx)
        if response.size > 0
          check[:domain] = true
          t = "Found mx record(s) for #{w}; "
          response.each do |r|
            t = t.concat(r.exchange.to_s + ", ")
          end
          check[:status] = t
        else
          check[:status] = "Most propably #{w} does not exist."
        end
      end
    else
      check[:status] = "#{email} is not a valid email address"
    end
    return check
  end
end
