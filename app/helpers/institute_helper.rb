module InstituteHelper
  def subsection_path
    '/' + ["institute", params[:section], params[:subsection]].compact.join('/')
  end

  def parse_content_links
    body = Content.all[1].body
    nav_links = []
    raw_links = body.split("\r\n")
    
    raw_links.each do |raw_link|
      if raw_link[0] != "\t"
        # nav link
        # add current raw_link data to nav_links
        url, title = raw_link.split("\t")
        nav_links << {url: url, title: title}
      else
        # subnav link
        subnav_links = (nav_links.last[:subnav] ||= [])
        _, url, title = raw_link.split("\t")

        subnav_links << {url: url, title: title}
      end
      
    end
    nav_links
  end

  def institute_law_nav
    [
      {
        url: "/institute/law",
        title: "introduction"
      },{
        url: "/institute/law/foundational_information",
        title: "foundational information",
        subnav: [
          {
            url: "/institute/law/foundational_information",
            title: "fiction & reality"
          },{
            url: "/institute/law/foundational_information/birth_registration.html",
            title: "birth registration"
          },{
            url: "/institute/law/foundational_information/surety.html",
            title: "surety"
          },{
            url: "/institute/law/foundational_information/legal_fictions.html",
            title: "legal fictions"
          },{
            url: "/institute/law/foundational_information/the_importanceof_being_at_peace.html",
            title: "the importance of being at peace"
          },{
            url: "/institute/law/foundational_information/mindset.html",
            title: "mindset"
          }
        ]
      },{
        url: "/institute/law/individual_sovereignty",
        title: "individual sovereignty",
        subnav: [
          {
            url: "/institute/law/individual_sovereignty",
            title: "individual sovereignty"
          },{
            url: "/institute/law/individual_sovereignty/addressing_socalled_criminal_matters.html",
            title: "addressing so-called criminal matters"
          },{
            url: "/institute/law/individual_sovereignty/addressing_socalled_civil_matters.html",
            title: "addressing so-called civil matters"
          }
        ]
      },{
        url: "/institute/law/absolute_sovereignty",
        title: "absolute sovereignty",
        subnav: [
          {
            url: "/institute/law/absolute_sovereignty",
            title: "absolute sovereignty"
          },{
            url: "/institute/law/absolute_sovereignty/embodying_absolute_sovereignty.html",
            title: "embodying absolute sovereignty"
          },{
            url: "/institute/law/absolute_sovereignty/effective_self_inquiry.html",
            title: "effective self inquiry"
          },{
            url: "/institute/law/absolute_sovereignty/the_importance_of_asking_questions.html",
            title: "the importance of asking questions"
          }
        ]
      },{
        url: "/institute/law/forms_of_law",
        title: "forms of law",
        subnav: [
          {
            url: "/institute/law/forms_of_law",
            title: "natural law"
          },{
            url: "/institute/law/forms_of_law/military_law.html",
            title: "military law"
          },{
            url: "/institute/law/forms_of_law/equity.html",
            title: "equity"
          },{
            url: "/institute/law/forms_of_law/common_law.html",
            title: "common law"
          },{
            url: "/institute/law/forms_of_law/law_common_to_oneself.html",
            title: "law common to oneself"
          }
        ]
      },{
        url: "/institute/law/remedies",
        title: "remedies",
        subnav: [
          {
            url: "/institute/law/remedies",
            title: "introduction"
          },{
            url: "/institute/law/remedies/establishing_a_sovereign_trust_framework.html",
            title: "establishing a sovereign trust framework"
          },{
            url: "/institute/law/remedies/creating_public_records.html",
            title: "creating public records"
          },{
            url: "/institute/law/remedies/lawful_letter_writing.html",
            title: "lawful letter writing"
          },{
            url: "/institute/law/remedies/claiming_property.html",
            title: "claiming property"
          },{
            url: "/institute/law/remedies/noticing.html",
            title: "noticing"
          },{
            url: "/institute/law/remedies/administrative_procedure.html",
            title: "administrative procedure"
          },{
            url: "/institute/law/remedies/convening_your_own_court_of_record.html",
            title: "convening your own court of record"
          }
        ]
      }
    ]
  end
end

