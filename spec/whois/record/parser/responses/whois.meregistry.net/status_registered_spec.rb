# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.meregistry.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.meregistry.net.rb'

describe Whois::Record::Parser::WhoisMeregistryNet, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.meregistry.net/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "WHOIS TERMS & CONDITIONS: Access to .ME WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the .ME registry database. The data in this record is provided by .ME Registry for informational purposes only, and .ME Registry does not guarantee its accuracy. This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, facsimile, or other electronic processes of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. .ME Registry reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "google.me"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "D11599-ME"
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == ["CLIENT DELETE PROHIBITED", "CLIENT TRANSFER PROHIBITED", "CLIENT UPDATE PROHIBITED"]
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2008-06-13 17:17:40 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2009-06-10 11:00:13 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2013-06-13 17:17:40 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "R45-ME"
      @parser.registrar.name.should         == "MarkMonitor Inc"
      @parser.registrar.organization.should == "MarkMonitor Inc"
      @parser.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "mmr-32097"
      @parser.registrant_contacts[0].name.should         == "DNS Admin"
      @parser.registrant_contacts[0].organization.should == "Google Inc."
      @parser.registrant_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.registrant_contacts[0].city.should         == "Mountain View"
      @parser.registrant_contacts[0].zip.should          == "94043"
      @parser.registrant_contacts[0].state.should        == "CA"
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == "+1.6506234000"
      @parser.registrant_contacts[0].fax.should          == "+1.6506188571"
      @parser.registrant_contacts[0].email.should        == "dotme@markmonitor.com"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should           == "mmr-32097"
      @parser.admin_contacts[0].name.should         == "DNS Admin"
      @parser.admin_contacts[0].organization.should == "Google Inc."
      @parser.admin_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.admin_contacts[0].city.should         == "Mountain View"
      @parser.admin_contacts[0].zip.should          == "94043"
      @parser.admin_contacts[0].state.should        == "CA"
      @parser.admin_contacts[0].country_code.should == "US"
      @parser.admin_contacts[0].phone.should        == "+1.6506234000"
      @parser.admin_contacts[0].fax.should          == "+1.6506188571"
      @parser.admin_contacts[0].email.should        == "dotme@markmonitor.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == "mmr-32097"
      @parser.technical_contacts[0].name.should         == "DNS Admin"
      @parser.technical_contacts[0].organization.should == "Google Inc."
      @parser.technical_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.technical_contacts[0].city.should         == "Mountain View"
      @parser.technical_contacts[0].zip.should          == "94043"
      @parser.technical_contacts[0].state.should        == "CA"
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "+1.6506234000"
      @parser.technical_contacts[0].fax.should          == "+1.6506188571"
      @parser.technical_contacts[0].email.should        == "dotme@markmonitor.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns2.google.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns1.google.com"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns4.google.com"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "ns3.google.com"
    end
  end
end