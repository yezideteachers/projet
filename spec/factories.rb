FactoryGirl.define do
  factory :chapitre do
    sequence(:chapitre_id)  { |n| "Chapitre #{n}" }
    sequence(:titre) { |n| "titre #{n}"}
   
  end

  factory :anecdote do
    sujet "sujet"
    theme "theme"
    chapitre
  end

  factory :scene do
    recit "recit"
    lieu "lieu" 
    periode "periode"
    chapitre
  end
end