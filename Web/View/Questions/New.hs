module Web.View.Questions.New where
import Web.View.Prelude

data NewView = NewView { question :: Question, categories:: [QuestionCategory], optioncategories:: [OptionCategory], responsecategories:: [ResponseCategory] }

instance View NewView where
    html NewView { .. } = [hsx|
        {breadcrumb}
        <h1>New Question</h1>
        {renderForm question categories optioncategories responsecategories}
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Questions" QuestionsAction
                , breadcrumbText "New Question"
                ]

renderForm :: Question -> [QuestionCategory] ->[OptionCategory] -> [ResponseCategory] -> Html
renderForm question categories optioncategories responsecategories = formFor question [hsx|
    {(selectField #category categories) {fieldLabel = "Question Category"}}
    <!-- {(textField #category)} -->
    {(textField #qstnDesc) {fieldLabel = "Question Description"} }
    {(selectField #optCategory optioncategories) {fieldLabel = "Options Category"}}
    {(selectField #rspnCategory responsecategories) {fieldLabel = "Response Category"}}
    <!-- {(textField #active)} -->
    {(checkboxField #active)}
    <!-- {myName} -->
    <!-- {(textField myName)} -->
    {submitButton}

|]
