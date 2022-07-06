module Web.Controller.Questions where

import Web.Controller.Prelude
import Web.View.Questions.Index
import Web.View.Questions.New
import Web.View.Questions.Edit
import Web.View.Questions.Show
import Web.View.Questions.New
import Web.View.Questions.Edit (EditView(question))

instance Controller QuestionsController where
    
    beforeAction = do 
        ensureIsUser

    action QuestionsAction = do
        questions <- query @Question |> fetch
        do
            let categories = allEnumValues @QuestionCategory
            let optioncategories = allEnumValues @OptionCategory
            let responsecategories = allEnumValues @ResponseCategory
            render IndexView { .. }

    action NewQuestionAction = do
        let question = newRecord
        do 
            -- let myName = "Ruchika"
            let categories = allEnumValues @QuestionCategory
            let optioncategories = allEnumValues @OptionCategory
            let responsecategories = allEnumValues @ResponseCategory 
            
            render NewView { .. }

        -- qcategories = allEnumValues @QuestionCategory

    action ShowQuestionAction { questionId } = do
        question <- fetch questionId
        do
            let categories = allEnumValues @QuestionCategory
            let optioncategories = allEnumValues @OptionCategory
            let responsecategories = allEnumValues @ResponseCategory
            render ShowView { .. }

    action EditQuestionAction { questionId } = do
        question <- fetch questionId
        do
            let categories = allEnumValues @QuestionCategory
            let optioncategories = allEnumValues @OptionCategory
            let responsecategories = allEnumValues @ResponseCategory
            render EditView { .. }

    action UpdateQuestionAction { questionId } = do
        question <- fetch questionId
        question
            |> buildQuestion
            |> ifValid \case
                Left question -> do
                    let categories = allEnumValues @QuestionCategory
                    let optioncategories = allEnumValues @OptionCategory
                    let responsecategories = allEnumValues @ResponseCategory  
                    render EditView { .. }
                Right question -> do
                    question <- question |> updateRecord
                    setSuccessMessage "Question updated"
                    redirectTo EditQuestionAction { .. }

    action CreateQuestionAction = do
        let question = newRecord @Question
        question
            |> buildQuestion
            |> ifValid \case
                Left question -> do
                    let categories = allEnumValues @QuestionCategory
                    let optioncategories = allEnumValues @OptionCategory
                    let responsecategories = allEnumValues @ResponseCategory  
                    render NewView { .. } 
                Right question -> do
                    question <- question |> createRecord
                    setSuccessMessage "Question created"
                    redirectTo QuestionsAction

    action DeleteQuestionAction { questionId } = do
        question <- fetch questionId
        deleteRecord question
        setSuccessMessage "Question deleted"
        redirectTo QuestionsAction

buildQuestion question = question
    |> fill @["category","qstnDesc","rspnCategory","optCategory","active"]
    |> validateField #qstnDesc nonEmpty
