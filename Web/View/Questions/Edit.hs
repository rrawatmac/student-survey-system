module Web.View.Questions.Edit where
import Web.View.Prelude

data EditView = EditView { question :: Question, categories :: [QuestionCategory], optioncategories:: [OptionCategory], responsecategories:: [ResponseCategory] }

instance View EditView where
    html EditView { .. } = [hsx|
        {breadcrumb}
        <h1>Edit Question</h1>
        {renderForm question categories optioncategories responsecategories}
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Questions" QuestionsAction
                , breadcrumbText "Edit Question"
                ]

renderForm :: Question -> [QuestionCategory] -> [OptionCategory]-> [ResponseCategory] -> Html
renderForm question categories optioncategories responsecategories = formFor question [hsx|
    {(selectField #category categories) {fieldLabel = "Question Category"}}
    {(textField #qstnDesc) {fieldLabel = "Question Description"} }
    {(selectField #optCategory optioncategories) {fieldLabel = "Options Category"}}
    {(selectField #rspnCategory responsecategories) {fieldLabel = "Response Category"}}
    {(checkboxField #active)}
    {submitButton}

|]