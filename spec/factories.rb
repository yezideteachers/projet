FactoryGirl.define do
   factory :chapitre do
         sequence(:chapitre_id)  { |n| 0 }
    sequence(:titre ) { |n| "Exemple titre"}
        
        
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