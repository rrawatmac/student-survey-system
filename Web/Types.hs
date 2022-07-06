module Web.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types
import IHP.MailPrelude (CanSelect (selectValue, selectLabel), SelectValue)
-- Sessions Imports
import IHP.LoginSupport.Types

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

instance HasNewSessionUrl User where
    newSessionUrl _ = "/NewSession"

type instance CurrentUserRecord = User

data QuestionsController
    = QuestionsAction
    | NewQuestionAction
    | ShowQuestionAction { questionId :: !(Id Question) }
    | CreateQuestionAction
    | EditQuestionAction { questionId :: !(Id Question) }
    | UpdateQuestionAction { questionId :: !(Id Question) }
    | DeleteQuestionAction { questionId :: !(Id Question) }
    deriving (Eq, Show, Data)

-- Custom code starts here
instance CanSelect QuestionCategory where
    type SelectValue QuestionCategory = QuestionCategory
    selectValue value = value

    selectLabel Endurability = "Endurability"
    selectLabel PerceivedUsability = "Perceived Usability"
    selectLabel AestheticAppeal = "Aesthetic Appeal"
    selectLabel Novelty = "Novelty"
    selectLabel FeltInvolvement = "Felt Involvement"
    selectLabel FocusedAttention = "Focused Attention"
    selectLabel Confidence = "Confidence"
    selectLabel SocialAwareness = "Social Awareness"
    selectLabel SocialRegulation = "Social Regulation"
    selectLabel General = "General"
    selectLabel SelfEfficacy = "Self-Efficacy"
    selectLabel GrowthMindset = "Growth-Mindset"
    selectLabel Marketing = "Marketing"
    selectLabel CodingConfidence = "Coding Confidence"
    selectLabel EmotionalRegulation = "Emotional Regulation"
    selectLabel SelfRegulation = "Self-Regulation"
    selectLabel CoRegulation = "Co-Regulation"
    selectLabel TimeManagement = "Time Management"
    selectLabel TaskManagement = "Task Management"
instance CanSelect ResponseCategory where
    type SelectValue ResponseCategory = ResponseCategory
    selectValue value = value
        
    selectLabel FiveOptionsPostiveUp = "Postive Up"
    selectLabel FiveOptionsNegativeUp = "Negative Up"
    selectLabel Neutral = "Neutral"



data SurveysController
    = SurveysAction
    | NewSurveyAction
    | ShowSurveyAction { surveyId :: !(Id Survey) }
    | CreateSurveyAction
    | EditSurveyAction { surveyId :: !(Id Survey) }
    | UpdateSurveyAction { surveyId :: !(Id Survey) }
    | DeleteSurveyAction { surveyId :: !(Id Survey) }
    | StartSurveyAction {  surveyId :: !(Id Survey), index:: !Int}    
    | UserSurveyAction
    | BuildSurveyAction { surveyId :: !(Id Survey), index:: !Int }  
    | SubmitResponseAction {surveyId :: !(Id Survey), questionId:: !(Id Question), optionId:: !(Id Option), index:: !Int }
    deriving (Eq, Show, Data)

data UsersController
    = UsersAction
    | NewUserAction
    | ShowUserAction { userId :: !(Id User) }
    | CreateUserAction
    | EditUserAction { userId :: !(Id User) }
    | UpdateUserAction { userId :: !(Id User) }
    | DeleteUserAction { userId :: !(Id User) }
    deriving (Eq, Show, Data)


instance CanSelect OptionCategory where
    type SelectValue OptionCategory = OptionCategory
    selectValue value = value

    selectLabel Cat1Options6 = "Category 1 Options 6"
    selectLabel Cat2Options6 = "Category 2 Options 6"
    selectLabel Cat3Options5 = "Category 3 Options 5"
    selectLabel Cat4Options5 = "Category 4 Options 5"
    selectLabel Cat5Options5 = "Category 5 Options 5"
    selectLabel Cat6Options5 = "Category 6 Options 5"
    selectLabel Cat7Options5 = "Category 7 Options 5"
    selectLabel Cat8Options5 = "Category 8 Options 5"

data SessionsController
    = NewSessionAction
    | CreateSessionAction
    | DeleteSessionAction
    deriving (Eq, Show, Data)

