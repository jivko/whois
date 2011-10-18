# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.aero/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.aero.rb'

describe Whois::Record::Parser::WhoisAero, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.aero/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "Access to .AERO WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Afilias registry database. The data in this record is provided by Afilias Limited for informational purposes only, and Afilias does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Afilias reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "srilankan.aero"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "D246-AERO"
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
      @parser.status.should == ["OK"]
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
      @parser.created_on.should == Time.parse("2002-03-26 06:48:27 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2008-03-05 14:32:18 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2010-03-26 06:48:27 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "380"
      @parser.registrar.name.should         == "Tuonome IT"
      @parser.registrar.organization.should == "Tuonome IT"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "C4526901-AERO"
      @parser.registrant_contacts[0].name.should         == "Domain Name Administrator"
      @parser.registrant_contacts[0].organization.should == "SriLankan Airlines Ltd"
      @parser.registrant_contacts[0].address.should      == "Admin Bldg"
      @parser.registrant_contacts[0].city.should         == "Katunayaka"
      @parser.registrant_contacts[0].zip.should          == "11450"
      @parser.registrant_contacts[0].state.should        == "WP"
      @parser.registrant_contacts[0].country_code.should == "LK"
      @parser.registrant_contacts[0].phone.should        == "+94.197331600"
      @parser.registrant_contacts[0].fax.should          == "+94.197335160"
      @parser.registrant_contacts[0].email.should        == "domregister@srilankan.aero"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should           == "C4526901-AERO"
      @parser.admin_contacts[0].name.should         == "Domain Name Administrator"
      @parser.admin_contacts[0].organization.should == "SriLankan Airlines Ltd"
      @parser.admin_contacts[0].address.should      == "Admin Bldg"
      @parser.admin_contacts[0].city.should         == "Katunayaka"
      @parser.admin_contacts[0].zip.should          == "11450"
      @parser.admin_contacts[0].state.should        == "WP"
      @parser.admin_contacts[0].country_code.should == "LK"
      @parser.admin_contacts[0].phone.should        == "+94.197331600"
      @parser.admin_contacts[0].fax.should          == "+94.197335160"
      @parser.admin_contacts[0].email.should        == "domregister@srilankan.aero"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == "C4526901-AERO"
      @parser.technical_contacts[0].name.should         == "Domain Name Administrator"
      @parser.technical_contacts[0].organization.should == "SriLankan Airlines Ltd"
      @parser.technical_contacts[0].address.should      == "Admin Bldg"
      @parser.technical_contacts[0].city.should         == "Katunayaka"
      @parser.technical_contacts[0].zip.should          == "11450"
      @parser.technical_contacts[0].state.should        == "WP"
      @parser.technical_contacts[0].country_code.should == "LK"
      @parser.technical_contacts[0].phone.should        == "+94.197331600"
      @parser.technical_contacts[0].fax.should          == "+94.197335160"
      @parser.technical_contacts[0].email.should        == "domregister@srilankan.aero"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "dns2.srilankan.aero"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "dns1.srilankan.aero"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "s1.ns.slt.lk"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "s2.ns.slt.lk"
    end
  end
end